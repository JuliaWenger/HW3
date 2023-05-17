class PlacesController < ApplicationController

  def index
    @places = Place.all 
  end 
  
  def show 
    @place = Place.find_by ({"id" => params["id"]})
    @places = Place.where({"place_id" => @place["id"]})
  end 

  def new 
    @place = Place.new 
  end 

  def create 
  #make new place
    @place = Place.new 

    puts params["place"]

  # assign user-entered form data to Company's columns
    @place["name"] = params["place"]["name"]

  #save new entry
    @place.save

  #redirect to home page 
    redirect_to "/places"
  end 
end 