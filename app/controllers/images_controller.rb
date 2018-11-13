class ImagesController < ApplicationController
  class ImagesController < ApplicationController

 def index
     @user = User.find(params[:user_id])
     @images = @image.images
 end

 def show
     @image = Image.find(params[:id])
 end

 def new
     @user = User.find(params[:user_id])
     @image = Image.new

 end

 def create
     @image = Image.create(image_params)
     @image.save
     redirect_to user_image_path(:user_id, @image)
 end

 def edit
 end

 private

 def image_params
     params.require(:image).permit(:user_id, :title, :img_url)
 end

end
