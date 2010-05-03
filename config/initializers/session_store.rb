# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ranet_session',
  :secret      => 'ca15c7ee67da7b8aa258ab5df5f75a6662277b732a16a2b62ccf928beeba6c4c6ed11a6e72f54b8add02b91ebf7d061ee55b9210dcf5b5e27a27f0d68a7adab7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
