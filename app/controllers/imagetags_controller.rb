class ImagetagsController < ApplicationController

def new
 @imagetag  = Imagetag.new
end

def index
  @imagetags =  Imagetag.all
end

def show
 @imagetag = Imagetag.find(params[:id])
end

def create
@imagetag = Imagetag.create(imagetag_params)
redirect_to @imagetag
end

private

  def imagetag_params
    params.require(:imagetag).permit(:image_id, :hashtag_id )
  end


end
