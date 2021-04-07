ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'simplecov'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
  SimpleCov.start 'rails'

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  Minitest::Reporters.use! [
    Minitest::Reporters::SpecReporter.new,
    Minitest::Reporters::HtmlReporter.new(:reports_dir => "#{File.dirname(__FILE__)}/../reports/html"),
    Minitest::Reporters::JUnitReporter.new(
      "#{File.dirname(__FILE__)}/../reports/xml",
      true, { :single_file => true }
    )
  ]

  def log_in(user)
    login_as(user, :scope => :user) if integration_test?

    sign_in(user)
  end
end
