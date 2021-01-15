require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    config.i18n.default_locale = :"pt-BR"

    config.generators.helper false
    config.generators.javascript_engine :js
    config.generators.stylesheet_engine :scss
  end
end
