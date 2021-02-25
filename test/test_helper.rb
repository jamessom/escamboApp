ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  Minitest::Reporters.use! [
    Minitest::Reporters::DefaultReporter.new(:color => true),
    Minitest::Reporters::HtmlReporter.new(:reports_dir => "#{File.dirname(__FILE__)}/../reports/html"),
    Minitest::Reporters::JUnitReporter.new(
      "#{File.dirname(__FILE__)}/../reports/xml",
      true,
      {
        :single_file => true
      }
    )
  ]

  def log_in(user)
    if integration_test?
      login_as(user, :scope => :user)
    end

    sign_in(user)
  end
end
