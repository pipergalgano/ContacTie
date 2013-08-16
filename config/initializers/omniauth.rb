Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["CONTACT_TIE_GOOGLE_CONTACTS_API_KEY"], ENV["CONTACT_TIE_GOOGLE_CONTACTS_SECRET"],
    {
      :scope => "userinfo.email, userinfo.profile, https://www.google.com/m8/feeds",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
    }
end