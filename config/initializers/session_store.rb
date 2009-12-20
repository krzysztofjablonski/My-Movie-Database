# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mmd_session',
  :secret      => '9354b9e64879aae514a3c0a3b132c1d8fbaaa0e429b0e61dae535e1d9812024f5e804daa88dabd5576082cda6d0bdfde91f4d4b094697c7d25d0af6587aa4c91'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
