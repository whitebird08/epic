class CommentsController < ApplicationController
  def create
    @bike = Bike.find(params[:bike_id])
    @comment = @bike.comments.create(comment_params)
    redirect_to bike_path(@bike)
  end

    def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @bike = Bike.find(params[:bike_id])
    redirect_to @bike
  end

 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end