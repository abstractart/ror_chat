source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Helper for kaminari gem
gem 'bootstrap-kaminari-views'
# Authentication
gem 'devise'

gem 'ffaker'

# Pagination
gem 'kaminari'
# Time helper fow views
gem 'local_time'
# OAuth Facebook provider
gem 'omniauth-facebook', '~> 4.0.0'
gem "pundit"
gem 'record_tag_helper', '~> 1.0'
gem 'simple_form'
gem 'slim-rails'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platform: :mri
  gem 'capybara', '~> 2.13'
  gem 'capybara-webkit'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'bundler-audit'
  gem 'flamegraph'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-mini-profiler', require: false
  ## Linters
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'stackprof'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'guard'
  gem 'guard-brakeman'
  gem 'guard-bundler', require: false
  gem 'guard-rspec'
  gem 'json-schema'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'shoulda-callback-matchers', '~> 1.1'
  gem 'shoulda-matchers',          '~> 3.1'
  gem 'simplecov', require: false
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'terminal-notifier-guard'
  gem 'timecop'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
