require 'oauth2'

module RenRenOAuth2
	class Client < OAuth2::Client
		def initialize(client_id = '', client_sercert = '', opts = {}, &block)
			client_id = RenRenOAuth2::Config.api_key
			client_sercert = RenRenOAuth2::Config.api_sercert
			super
			@site = "https://graph.renren.com/"
			@options[:authorize_url] = "/oauth/authorize"
			@options[:token_url] = "/oauth/token"
		end

		def authorize_url(params = {})
		    params[:client_id] = @id
      		params[:response_type] = 'code'
			params[:redirect_uri] = RenRenOAuth2::Config.redirect_uri unless params[:redirect_uri]
			super
		end

		def get_token(params, access_token_opts = {})
			params = params.merge({:grant_type => 'authorization_code'})
			access_token_opts = access_token_opts.merge({:param_name => 'access_token'})
			super
		end
	end
end