class GoalsController < ApplicationController

  def index
    @goals = Goal.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @goals }
    end
  end

  def show
    @user = current_user
    @goals = current_user.goals
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.create(goal_params)
    @user_id = session[:current_user_id]
    @goal.make_goal_for_user(@user_id)
    redirect_to goal_path(@user_id)
  end


  def reminder
    @user = current_user
    @goals = current_user.goals
  end

  def edit
  @goal = Goal.find(params[:id])
  end

  def update
  @goal = Goal.find(params[:id])
    if @goal.update(user_params)
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @goal }
      end
    else
      render :edit
  end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @user_id = session[:current_user_id]
    @goal.destroy
    redirect_to goal_path(@user_id)
  end

  private 
	def goal_params
		params.require(:goal).permit(:goal_name, :theme, :achieved, :image_url, :end_date, :when_text)
	end

end
