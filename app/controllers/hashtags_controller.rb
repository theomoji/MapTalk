class HashtagsController < ApplicationController
  class HashtagsController < ApplicationController

 def index
     @hashtags = Hashtag.all
 end

 def show
     @hashtag = Hashtag.find(params[:id])
 end

 def new
     @hashtag = Hashtag.new

 end

 def create
     @hashtag = Hashtag.create(hashtag_params)
     @hashtag.save
     redirect_to hashtag_path(@hashtag)
 end

 def edit
 end

 private

 def hashtag_params
     params.require(:hashtag).permit(:name)
 end

end
