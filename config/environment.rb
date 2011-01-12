# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

#ENV['RAILS_ENV'] ||= 'production'

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

#	config.gem 'mysql'
	config.gem "sqlite3-ruby", :lib => "sqlite3"

#	config.gem "chronic"   #		http://chronic.rubyforge.org/
#	config.gem 'will_paginate'
#	config.gem 'fastercsv'

	# config.plugins = [ :exception_notification, :ssl_requirement, :all ]

	config.frameworks -= [ :active_resource ]

	# Set Time.zone default to the specified zone and make Active Record 
	#	auto-convert to this zone.
	# Run "rake -D time" for a list of tasks for finding time zone names.
	config.time_zone = 'UTC'

end
