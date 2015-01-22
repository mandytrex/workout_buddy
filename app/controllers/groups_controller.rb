class GroupsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end


  private 
	def group_params
		params.require(:group).permit(:name, :coordinator_id, :image_url)
	end

end
