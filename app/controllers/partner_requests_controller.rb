class PartnerRequestsController < ApplicationController

	def index
 	#make function so it is all except current user
 	@partner_requests = PartnerRequest.all
  respond_to do |format|
		format.html { render :index }
		format.json { render json: @partner_requests }
		end
	end

	def make_request
	end

	def accept_request
	end

end