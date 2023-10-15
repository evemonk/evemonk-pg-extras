# frozen_string_literal: true

source "https://rubygems.org"

ruby file: ".ruby-version"

gem "rails", "7.1.1"
gem "pg"
gem "puma"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:windows, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

gem "rails-pg-extras"
gem "pry-rails"
gem "sshkit", require: false

gem "uri", ">= 0.12.2"

group :development, :test do
  gem "dotenv-rails"
  gem "rspec-rails", ">= 6.0.1"
end

group :development do
  gem "license_finder", require: false
  gem "rubocop", require: false
  gem "rubocop-disable_syntax", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "standard", "1.31.2", require: false
  gem "brakeman", require: false
  gem "fasterer", require: false
end
