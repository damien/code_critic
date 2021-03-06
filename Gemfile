source 'https://rubygems.org'

# Newer versions of bundler are required in order to use rails-assets-* gems
gem 'bundler', '>= 1.8.4'

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
gem 'simple_form'
gem 'uglifier', '>= 1.3.0'

source 'https://rails-assets.org' do
  # Fastclick is an optional dependency for Zurb Foundation, but there does
  # not seem to be an up-to-date standalone ruby gem that adds Fastclick
  # to the asset pipeline.
  gem 'rails-assets-fastclick'
end

group :development, :test do
  gem 'haml-lint', require: 'haml_lint'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'rubocop'
  gem 'web-console', '~> 2.0'
  gem 'yard'
end

group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'simplecov', require: false
end
