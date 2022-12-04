class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    unless @post.save
      flash.alert = "Cannot create an empty post!"
    end
    redirect_to controller: :main, action: :index
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
