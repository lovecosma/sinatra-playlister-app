ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require "pry"
require "active_record"
Bundler.require(:default, ENV['SINATRA_ENV'])


require './app/controllers/application_controller'
require_all 'app'
