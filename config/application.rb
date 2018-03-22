require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require 'rom-rails'
require 'rom'
require 'rom-sql'
require 'rom-repository'

unless Rails.env.production?
  require 'rspec-rails'
  require 'figaro'
end

module VpxOpenSource
  class Application < Rails::Application
  require 'my_app'

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # add custom directories
    Dir[Rails.root.join('app', 'use-cases', '**/')]
    #Dir[Rails.root.join('app', 'entities', '**/')]
  end
end
