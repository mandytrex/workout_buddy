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
	@partner_request = PartnerRequest.find(params[:id])
	end


	def make_request
	end

	def accept_request
	end

private 
	def partner_request_params
		params.require(:partner_request).permit(:requester_id, :receiver_id, :message)
	end

end
