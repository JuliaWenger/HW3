class PostsController < ApplicationController
  def index 
  end


#new 
def new
  @post = Post.new 
end 

#show 
def show 
  @post = Post.find_by({"id" => params["id"]})
end 

#create
  @post = Post.new 
# assign user-entered form data to Post's columns
  @post["title"] = param["post"]["title"]
  @post["description"] = param["post"]["description"]
  @post["posted_on"] = param["post"]["posted_on"]
  @post["place_id"] = param["post"]["place_id"]

  #save
  @post.save 

  #redirect user back to home page
  redirect_to "/posts/#{@place["place_id"]}"
end 

end 