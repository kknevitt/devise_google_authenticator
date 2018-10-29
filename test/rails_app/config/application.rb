require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"

begin
  require "#{DEVISE_ORM}/railtie"
rescue LoadError
end

require "devise"
require "devise_google_authenticator"

module RailsApp
  class Application < Rails::Application
    #config.filter_parameters << :password

  end
end
