# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

production:
  <<: *default
  adapter: postgresql
  encoding: unicode
  pool: 5
