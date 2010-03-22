# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_mangouste_session',
  :secret => 'daed42acf7677aef2da51830149dffa4d60e74fa49f8c384576bbe07d42fbe281747c25dfe570af47bc4ac586ae42d964cd76f6ab621c0f697fddec8c77132a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
