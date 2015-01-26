class PartnerRequestsController < ApplicationController

	def index
 	#make function so it is all except current user
 	@partner_requests = PartnerRequest.all
  respond_to do |format|
		format.html { render :index }
		format.json { render json: @partner_requests }
		end
	end

	def show
		@current_user = current_user.id
		@partner_requests = PartnerRequest.where(:receiver_id => @current_user)
		# @user_id = session[:current_user_id]
		# @partner_request = PartnerRequest.find(params[:id])
	end

	def create
		partner_request = PartnerRequest.new(partner_request_params)
		if partner_request.save
			render json: partner_request
		else
			render json: { errors: partner_request.errors.full_messages}, status: 422
		end
	end

	def accept_request
	end

private 
	def partner_request_params
		params.require(:partner_request).permit(:requester_id, :receiver_id, :message)
	end

end
