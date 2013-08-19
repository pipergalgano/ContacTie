require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, ENV["CONTACT_TIE_GOOGLE_CONTACTS_APP_ID"], ENV["CONTACT_TIE_GOOGLE_CONTACTS_SECRET"]
  #importer :yahoo, "consumer_id", "consumer_secret", {:callback_path => '/callback'}
  #importer :hotmail, "client_id", "client_secret"
  #importer :facebook, "client_id", "client_secret"
end 