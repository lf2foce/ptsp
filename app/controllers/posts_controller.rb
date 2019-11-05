class PostsController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    redirect_to @user
  end
 
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
