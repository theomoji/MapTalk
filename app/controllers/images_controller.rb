class ImagesController < ApplicationController
before_action :current_user, only:[:create, :edit]

 def index
     @users = User.all

 end

 def show
     @image = Image.find(params[:id])
 end

 def new
     @image = Image.new
 end

  def create

    current_user.images.create(image_params)
     # @image = Image.create(image_params)
     redirect_to @image
   end

 def edit
   @image = Image.find(params[:id])
   if !authorized?(@image.user)
     redirect_to new_session_path()
  end
 end

 private

 def image_params
     params.require(:image).permit(:title, :img_url, :hashtag_id)
 end

end
