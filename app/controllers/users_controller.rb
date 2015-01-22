class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
		@current_user = current_user
  end

  def new
		@user = User.new
		@activities = Activity.all
	end

	def create
		@user = User.new(user_params)
		@activities = Activity.all
		@user_id = session[:current_user_id]
		if @user.save
			session[:current_user_id] = @user.id
			redirect_to @user
		else
			render :new
		end
	end
	
	private 
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :image_url, :age, :password, :password_confirmation)
	end
end
