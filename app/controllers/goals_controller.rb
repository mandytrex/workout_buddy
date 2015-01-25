class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @goals }
    end
  end

  def show
    @goal = Goal.find(params[:id])
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
		params.require(:goal).permit(:goal_name, :theme, :achieved, :image_url, :end_date)
	end

end
