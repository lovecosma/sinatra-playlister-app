require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :cross_origin
  end
  require 'sinatra'
require 'sinatra/cross_origin'
class MyApp < Sinatra::Base
  set :bind, '0.0.0.0'
  configure do
    #This is enable cross on the server
    enable :cross_origin
  end

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, 
        Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
end

  get "/" do
    "Welcome"
  end

end
