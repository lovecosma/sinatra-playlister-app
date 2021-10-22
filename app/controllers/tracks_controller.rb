class TracksController < ApplicationController

    get "/tracks" do 
        Track.all.to_json(:include => :artist)
    end 

    post "/tracks" do 
        binding.pry
    end 

end 

