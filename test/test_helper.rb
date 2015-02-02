if ENV['CI']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
elsif ENV['COVERAGE']
  require 'simplecov'
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module ActiveSupport
  # ActiveSupport::TestCase defines logic shared between all test cases
  # in this test suit
  class TestCase
    include Devise::TestHelpers

    # Setup all fixtures in test/fixtures/*.yml
    # for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
