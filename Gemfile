source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
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

# Authentication
gem 'devise'

#OAuth Facebook provider
gem 'omniauth-facebook', '~> 4.0.0'
gem 'slim-rails'
gem 'simple_form'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry'
  gem 'pry-rails'
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'pry-doc'
  gem 'awesome_print'
  
  gem 'capybara', '~> 2.13'
  gem 'factory_girl_rails'  
  gem 'rspec-rails', '~> 3.6'
  gem 'capybara-webkit'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  ## Linters
  gem 'rubocop', require: false
  gem 'bullet'

  gem 'bundler-audit'
  gem 'brakeman', require: false

  gem 'stackprof'
  gem 'flamegraph'
  gem 'rack-mini-profiler', require: false
end

group :test do
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-brakeman'
  gem 'guard-rspec'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
  gem 'terminal-notifier-guard'

  gem 'simplecov', require: false

  gem 'database_cleaner'

  gem 'shoulda-matchers',          '~> 3.1'
  gem 'shoulda-callback-matchers', '~> 1.1'

  gem 'ffaker'
  gem 'timecop'
  gem 'json-schema'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
