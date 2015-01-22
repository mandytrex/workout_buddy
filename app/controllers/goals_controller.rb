class GoalsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private 
	def goal_params
		params.require(:goal).permit(:fitness_goal, :theme, :acheived, :image_url, :end_date)
	end

end
