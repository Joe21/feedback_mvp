class ImagesController < ApplicationController
	def index
		feedback = Feedback.find(params[:feedback_id])
		@images = feedback.images
	end
end