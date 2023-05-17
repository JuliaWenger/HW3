class PostsController < ApplicationController
 #new 
  def new
  @post = Post.new 
  @post["place_id"] = params["place_id"]
  end 

def create
  @post = Post.new 

# assign user-entered form data to Post's columns
  @post["title"] = params["post"]["title"]
  @post["description"] = params["post"]["description"]
  @post["posted_on"] = params["post"]["posted_on"]
  @post["place_id"] = params["post"]["place_id"]

  #save
  @post.save 

  #redirect user back to home page
  redirect_to "/posts/#{@place["place_id"]}"
  end 
end 
