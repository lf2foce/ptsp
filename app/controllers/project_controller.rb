class ProjectController < ApplicationController
  layout "custom"
  def index

  	@user = current_user
  end
end
