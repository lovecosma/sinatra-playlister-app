ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "begin pry console"
task :console do 
    Pry.start
end 
task :server do
    exec "rerun -b 'rackup config.ru'"
  end