CarrierWave.configure do |config|
  if Rails.env.development?
    config.dropbox_app_key = API_KEYS["APP_KEY"]
    config.dropbox_app_secret = API_KEYS["APP_SECRET"]
    config.dropbox_access_token = API_KEYS["ACCESS_TOKEN"]
    config.dropbox_access_token_secret = API_KEYS["ACCESS_TOKEN_SECRET"]
    config.dropbox_user_id = API_KEYS["USER_ID"]
    config.dropbox_access_type = "app_folder"
  else
    config.dropbox_app_key = ENV["APP_KEY"]
    config.dropbox_app_secret = ENV["APP_SECRET"]
    config.dropbox_access_token = ENV["ACCESS_TOKEN"]
    config.dropbox_access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    config.dropbox_user_id = ENV["USER_ID"]
    config.dropbox_access_type = "app_folder"
  end
end
