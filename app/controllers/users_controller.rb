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

	def edit
		@user = User.find(params[:id])
		if @user != current_user
			redirect_to @user
		end
	end

	def update
		@user = User.find(params[:id])
		if @user != current_user
			redirect_to users_path
		else
			if @user.update(user_params)
				redirect_to @user
			else
				render :edit
			end
		end
	end

	# def invite
	# 	current_user.invite(@user)
	# end
	
	private 
	def user_params
		params.require(:user).permit(:username, :first_name, :email, :image_url, :age, :gender, :experience, :password, :password_confirmation)
	end
end
