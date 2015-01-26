class UsersController < ApplicationController

 def index
 	#make function so it is all except current user
 	@users = User.all
 	@user_id = session[:current_user_id]
  respond_to do |format|
		format.html { render :index }
		format.json { render json: @users }
	end
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

def destroy
		@user = User.find(params[:id])
		# might not need the below statement, because can't get to edit page unless logged in.
		# to close session add:  session[:current_user_id] = nil
		if @user != current_user
			redirect_to users_path
		else
			@user.destroy
			session[:current_user_id] = nil
			redirect_to(users_path)

		end
	end
	
	private 
	def user_params
		params.require(:user).permit(:username, :first_name, :email, :avatar, :age, :gender, :experience, :password, :password_confirmation, activity_ids:[], day_ids:[])
	end
end
