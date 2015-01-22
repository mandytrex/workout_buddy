class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user

  def index
  	render layout: 'application', text: ''
  end

  def authenticate
  	redirect_to root_path unless session[:current_user_id]
  end

  def current_user
    User.find(session[:current_user_id]) if session[:current_user_id]
  end

  # def logged_in?
  # 	:current_user_id != nil
  # end

end

  


