class PostCommentsController < ApplicationController

  def create
    postimage = Postimage.find(params[:postimage_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.postimage_id = postimage.id
    comment.save
    redirect_to postimage_path(postimage)
  end


  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
