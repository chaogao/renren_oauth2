require "renren_oauth2"

RenRenOAuth2::Config.api_key = 229479

RenRenOAuth2::Config.api_sercert = '3f2e4f430cac4ad584b973bd6694233d'

RenRenOAuth2::Config.redirect_uri = 'http://www.mytest.com'

client = RenRenOAuth2::Client.new
puts client.authorize_url

