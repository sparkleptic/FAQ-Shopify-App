BASE_URL = 'https://71d7274c.ngrok.io/'

ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "91ec83fc5e94975b603abdf182f9f08e"
  config.secret = "bec7720be25e665773bc5c45aa00be46"
  config.scope = "read_orders, read_products, read_script_tags, write_script_tags"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.scripttags = [
  	{event: 'onload', src: BASE_URL + '/assets/custom-jquery.js'}
  ]
end