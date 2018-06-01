require 'hello_sign'
HelloSign.configure do |config|
  config.api_key = '4fa79428f9b0384b3712d04f17d4601c30be9f5a2d19cf776465fc83e92e38d2'
  # You can use email_address and password instead of api_key. But api_key is recommended
  # If api_key, email_address and password are all present, api_key will be used
  # config.email_address = 'email_address'
  # config.password = 'password'
end
