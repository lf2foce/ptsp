class UsersController < ApplicationController

  def show
  	@user_manager = User.manager
  	@user = current_user

  	
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
	  current_user.update(user_params)
	  redirect_to current_user
  end

  private
	def user_params
	  params.require(:user).permit(:username, :name, :website,
	                               :date_of_birth, :email, :phone, :gender, :role)
	end

end
