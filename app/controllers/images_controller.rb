class ImagesController < ApplicationController


 def index
     @users = User.all

 end

 def show
     @image = Image.find(params[:id])
 end

 def new
     @user = User.find_by(params[:user_id])
     @image = Image.new

 end

 def create

     @image = Image.create(image_params)

     redirect_to @image
 end

 def edit
 end

 private

 def image_params
     params.require(:image).permit(:user_id, :title, :img_url, :hashtag_id)
 end

end
