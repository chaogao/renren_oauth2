module RenRenOAuth2
	module Config
		class << self
			attr_accessor(:api_key, :api_sercert, :redirect_uri)
		end
	end
end