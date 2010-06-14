# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resume_session',
  :secret      => '754ac78b5ada83a8dd4d4b5c29e7579246dd2f98a86fd1be8dcafe474d98ae812bd3dcb70c1736b501b649aa9d6bf5333f3c1729f2b400ba5a6368079d04c16e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
