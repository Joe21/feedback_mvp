class FeedbacksController < ApplicationController
	# Display all feedbacks
	def index
		@all_feedbacks = Feedback.all
	end

	def new
		@feedback = Feedback.new(date: Time.now.strftime("%d/%m/%Y"))
	end

	def create
		feedback = Feedback.create(params[:feedback])

		redirect_to feedbacks_path
	end

	def edit
		@feedback = Feedback.find(params[:id])
	end

	def update
		feedback = Feedback.find(params[:id])
		feedback.update_attributes(params[:feedback])

		redirect_to feedbacks_path
	end

	def destroy
		@feedback = Feedback.find(params[:id])
		@feedback.delete

		redirect_to feedbacks_path
	end

end