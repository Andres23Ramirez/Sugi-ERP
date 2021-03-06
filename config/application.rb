require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SugiErp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
	config.before_configuration do
		I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
		I18n.default_locale = :es
		I18n.reload!
	end
  end
end
