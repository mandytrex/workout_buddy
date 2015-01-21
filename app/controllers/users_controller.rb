class UsersController < ApplicationController

	# before_action :authenticate, except: [:create ]

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
		# @current_user = current_user
  end
	
	private 
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :image_url, :age, :password, :password_confirmation)
	end
end
