source 'https://rubygems.org'

# Note: Dotenv is a bit special in that it needs to be loaded before any other
# gems to ensure that all env var based configurations are available during
# the application intitialization process
gem 'dotenv'

gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'devise-authy'
gem 'envied', github: 'damien/envied', branch: 'feature/optional_and_non_optional_variables'
gem 'foundation-rails'
gem 'haml-rails', '~> 0.8'
gem 'jquery-rails'
gem 'omniauth-github'
gem 'pg'
gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'haml-lint', require: 'haml_lint'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop'
  gem 'web-console', '~> 2.0'
  gem 'yard'
end

group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'simplecov', require: false
end
