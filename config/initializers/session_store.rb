# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_metro_session',
  :secret      => 'c96c706f4aa3c3ef82186a09e7105c907be56a3cd4a8b58b2dfd8a7f9ca5daed204d16c3bf508f06b0e2831ece7663c27e12c25d206c934c9ba02590ab89ceab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
