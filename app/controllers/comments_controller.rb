class CommentsController < ApplicationController

 def index
     @user = User.find_by(params[:user_id])
     @image = Image.find_by(params[:image_id])
     @comments = Comment.all
 end

 def show
     @comment = Comment.find_by(params[:id])
 end

 def new
     @user = User.find_by(params[:user_id])
     @image = Image.find_by(params[:user_id])
     @comment = Comment.new

 end

 def create
     @comment = Comment.create(comment_params)
     @comment.save
     redirect_to image_path(:image_id, @comment)
 end



 private

 def comment_params
     params.require(:comment).permit(:user_id, :image_id, :content)
 end
end
