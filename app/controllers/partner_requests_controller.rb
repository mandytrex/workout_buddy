class PartnerRequestsController < ApplicationController

	def index
	# shows all users, except the current user
 	@user = current_user
	@current_user = current_user.id
	@partner_requests = PartnerRequest.where(:receiver_id => @current_user)
  respond_to do |format|
		format.html { render :index }
		format.json { render json: @partner_requests.to_json(:include => [:requester, :receiver]) }
		end
	end

	def create
		partner_request = PartnerRequest.new(partner_request_params)
		if partner_request.save
			render json: partner_request
		else
			render json: { errors: partner_request.errors.full_messages }, status: 422
		end
	end

	def update
	end

	def accept_request
		@partner_request = PartnerRequest.find(params[:id])
		# @current_users_requests = PartnerRequest.where(:receiver_id => current_user)
		@sender = @partner_request.requester
		@accepter = @partner_request.receiver
		@sender.partner = @accepter
		@accepter.partner = @sender
		@accepter.save
		@sender.save
		@partner_request.destroy
		# @current_users_requests.destroy
		render json: @partner_request
	end

  def destroy
  	@partner_request = PartnerRequest.destroy(params[:id])
  	render json: @partner_request
  end

private 
	def partner_request_params
		params.require(:partner_request).permit(:requester_id, :receiver_id, :message)
	end

end
