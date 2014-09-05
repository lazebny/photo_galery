CarrierWave.configure do |config|
  config.dropbox_app_key = APP_CONFIG['dropbox']["app_key"]
  config.dropbox_app_secret = APP_CONFIG['dropbox']["app_secret"]
  config.dropbox_access_token = APP_CONFIG['dropbox']["access_token"]
  config.dropbox_access_token_secret = APP_CONFIG['dropbox']["access_token_secret"]
  config.dropbox_user_id = APP_CONFIG['dropbox']["user_id"]
  config.dropbox_access_type = APP_CONFIG['dropbox']["access_type"]
end
