# frozen_string_literal: true

source "https://rubygems.org"

ruby File.read(".ruby-version")

gem "rails", "~> 7.0.0.alpha2"
gem "pg", "~> 1.1"
gem "puma"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

gem "rails-pg-extras-web"

group :development, :test do
  gem "dotenv-rails"
  gem "rspec-rails"
  gem "bundler-audit", require: false
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "standard", require: false
  gem "brakeman", require: false
  gem "fasterer", require: false
end

group :development do
end
