class PostsController < ApplicationController
  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    redirect_to @user
  end
  def destroy
    @user = current_user
    @post = @user.posts.find(params[:id])
    @post.destroy
    redirect_to @user
  end
 
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
