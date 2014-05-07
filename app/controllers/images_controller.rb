class ImagesController < ApplicationController
	def index
		@feedback = Feedback.find(params[:feedback_id])
		@images = @feedback.images
	end

	def new
		@feedback = Feedback.find(params[:feedback_id])
		@image = Image.new
	end
end