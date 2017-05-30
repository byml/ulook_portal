Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :qq_connect, ENV['QQ_CONNECT_APP_KEY'], ENV['QQ_CONNECT_APP_SECRET']
  provider :weibo, ENV['WEIBO_KEY'], ENV['WEIBO_SECRET']
end