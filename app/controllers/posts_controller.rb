class PostsController < ApplicationController
  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    redirect_to @user, notice: 'just submited request'
  end

  def update
  	 @post = Post.find(params[:id])
 
	  if @post.update(post_params)
	    redirect_to current_user
	  else
	    render 'edit'
	  end
  end

  def destroy
    @user = current_user
    @post = @user.posts.find(params[:id])
    @post.destroy
    redirect_to @user
  end
 
  private
    def post_params
      params.require(:post).permit(:title, :content, :post_status)
    end
end
