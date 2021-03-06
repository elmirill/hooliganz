Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

	# Mailer config
	config.action_mailer.default_url_options = { host: ENV["mailer_host"], port: 3000 }
	config.action_mailer.raise_delivery_errors = true
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
	address: ENV["mailer_address"],
	port: ENV["mailer_port"],
	domain: ENV["mailer_domain"],
	authentication: :plain,
	enable_starttls_auto: true,
	user_name: ENV["mailer_user"],
	password: ENV["mailer_pass"]
	}

	# Paperclip config
	Paperclip.options[:command_path] = "/usr/bin/"
	config.paperclip_defaults = {
		:storage => :s3,
		:bucket => ENV["s3_bucket_name"],
		:s3_credentials => {
			:access_key_id => ENV["aws_access_key_id"],
			:secret_access_key => ENV["aws_secret_access_key"]
		}
	}
end
