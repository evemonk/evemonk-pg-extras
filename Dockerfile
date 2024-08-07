# This Dockerfile is designed for production, not development. Use with Kamal or build'n'run by hand:
# docker build -t my-app .
# docker run -d -p 80:80 -p 443:443 --name my-app my-app

FROM registry.docker.com/library/ruby:3.3.4-slim@sha256:0f5c785e2189ab9ffda522b20c0380dbc51d9991361f9e0bfbcf46bb68d32b29 AS base

LABEL maintainer="Igor Zubkov <igor.zubkov@gmail.com>"

# Rails app lives here
WORKDIR /rails

# Install base packages
# hadolint ignore=DL3005
RUN set -eux; \
    apt-get update -qq ; \
    apt-get dist-upgrade -qq ; \
    apt-get install --no-install-recommends -y curl libjemalloc2 postgresql-client shared-mime-info ; \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Set production environment
ENV RAILS_ENV="production" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="development:test" \
    BOOTSNAP_LOG="true" \
    BOOTSNAP_READONLY="true" \
    RUBY_YJIT_ENABLE="1"

RUN set -eux; \
    gem update --system "3.5.17" ; \
    gem install bundler --version "2.5.17" --force

# Throw-away build stage to reduce size of final image
FROM base AS build

# Install packages needed to build gems
RUN set -eux; \
    apt-get update -qq ; \
    apt-get install --no-install-recommends -y build-essential git libpq-dev pkg-config ; \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install application gems
COPY .ruby-version Gemfile Gemfile.lock ./
RUN set -eux; \
    bundle install ; \
    rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git ; \
    bundle exec bootsnap precompile --gemfile

# Copy application code
COPY . .

# Precompile bootsnap code for faster boot times
RUN bundle exec bootsnap precompile app/ db/ lib/ config/ Rakefile

# Precompiling assets for production without requiring secret RAILS_MASTER_KEY
RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

# Final stage for app image
FROM base

# Copy built artifacts: gems, application
COPY --from=build "${BUNDLE_PATH}" "${BUNDLE_PATH}"
COPY --from=build /rails /rails

# Run and own only the runtime files as a non-root user for security
RUN set -eux; \
    groupadd --system --gid 1000 rails ; \
    useradd rails --uid 1000 --gid 1000 --create-home --shell /bin/bash ; \
    chown -R rails:rails db log tmp
USER 1000:1000

# Entrypoint prepares the database.
ENTRYPOINT ["/rails/bin/docker-entrypoint"]

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Start the server by default, this can be overwritten at runtime
EXPOSE 80/tcp

CMD ["./bin/thrust", "./bin/rails", "server"]
