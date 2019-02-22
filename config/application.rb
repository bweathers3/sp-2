require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sp2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_view.sanitized_allowed_tags = %w(p h1 h2 h3 h4 h5 div span table thead tbody th td tr br hr strong em b i a)
	  config.action_view.sanitized_allowed_attributes = %w(class id style href colspan rowspan cellpadding cellspacing border width clear)

    # Custom directories with classes and modules you want to be autoloadable.
   	config.autoload_paths += %W(#{config.root}/app/concerns)

    config.time_zone = 'Eastern Time (US & Canada)'


    config.active_job.queue_adapter = :delayed_job


    # Don't generate system test files.
    config.generators.system_tests = nil

    # support yaml config
	    CONFIG = (YAML.load_file('config/config.yml')[Rails.env] rescue {}).merge(ENV)

	    # Configure the default encoding used in templates for Ruby 1.9.
	    config.encoding = "utf-8"

	    # Configure sensitive parameters which will be filtered from the log file.
	    config.filter_parameters += [:password]

	    # Enable the asset pipeline
	    config.assets.enabled = true

	    # Version of your assets, change this if you want to expire all your assets
	    config.assets.version = '1.0'

  end
end
