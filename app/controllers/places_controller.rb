class PlacesController < ApplicationController

  def index
    @places = ["Charleston", "Berlin", "Slovenia", "San Francisco"]
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
    @place = Place.new 
    @place["name'"] = params["place"]["name"]

    @place.save
    redirect_to "/places"
  end 
end 