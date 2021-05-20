# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# FOUNDATION
gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'pg', '>= 0.18', '< 2.0'
gem 'rails', '~> 5.2.1'

# PERFORMANCE
gem 'bootsnap', '>= 1.1.0', require: false
gem 'dalli'
gem 'memcachier'
gem 'puma', '~> 4.3'
gem 'redis-namespace'
gem 'redis-objects'
gem 'redis-rails', '~> 5'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'sidekiq-status'
gem 'sidetiq', github: 'akhiln/sidetiq'
gem 'sinatra', require: nil # for sidekiq UI
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# TOOLS
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'rack-cors', require: 'rack/cors'
gem 'sentry-raven'
gem 'sparkpost_rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'letter_opener'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rename'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Rubocop
  gem 'rubocop', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
