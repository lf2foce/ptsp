class ProjectController < ApplicationController
  layout "custom"
  def index
  	@user = current_user
  	@user_manager = User.manager
  	@user_sale = User.sale
  end
end
