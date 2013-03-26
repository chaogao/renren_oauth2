Gem::Specification.new do |s|
  s.name        = 'renren_oauth2'
  s.version     = '0.0.0'
  s.date        = '2010-04-28'
  s.summary     = "renren oauth2 api"
  s.description = "renren oauth2 api"
  s.authors     = ["chao.gao"]
  s.email       = '824310342@qq.com'
  s.files       = ["lib/renren_oauth2.rb",
		  "lib/renren_oauth2/client.rb",
		  "lib/renren_oauth2/config.rb"]

  gem.add_development_dependency "rspec", "~> 2.6"
  
  gem.add_runtime_dependency 'oauth2', "~> 0.8.0"
  gem.add_runtime_dependency 'hashie', "~> 1.2.0"
  gem.add_runtime_dependency 'json'  , "~> 1.7.3"
  gem.add_runtime_dependency 'rest-client', "~> 1.6.7"

end
