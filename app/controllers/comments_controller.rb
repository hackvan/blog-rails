class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    post = Post.find(params[:post_id])
    post.comments.create(comments_params)
    redirect_to post
  end

  private
    def comments_params
      params.require(:comment)
        .permit(:text)
        .merge(user: current_user)
    end
end
