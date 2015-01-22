class GoalsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @goal = Goal.create(goal_params)
    @user_id = session[:current_user_id]
    @goal.make_goal_for_user(@user_id)
  end

  private 
	def goal_params
		params.require(:goal).permit(:fitness_goal, :theme, :acheived, :image_url, :end_date)
	end

end
