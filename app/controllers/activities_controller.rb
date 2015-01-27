class ActivitiesController < ApplicationController

def index
	@activities = Activity.all
end

def new
	@activity = Activity.new
end

def show
	@activity = Activity.find(params[:id])
end

def create
	@activity = Activity.new(activity_params)
	@activity.save
end

# def update
# put '/tags/:id' do
# 	tag = Tag.find(params[:id])
# 	if tag.update(params[:tag])
# 		redirect "/tags/#{tag.id}"
# 	else
# 		redirect "/tags/#{tag.id}/edit"
# 	end
# end

# #DELETE
# delete '/tags/:id' do
# 	tag = Tag.find(params[:id])
# 	if tag.destroy
# 		redirect "/tags"
# 	else
# 		redirect "/tags/#{tag.id}/edit"
# 	end
# end

end