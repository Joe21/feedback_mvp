class PresentationsController < ApplicationController
	# Display only top 5 feedbacks
	def index
		@all_feedbacks = Feedback.order("weight DESC").limit(5)
	end
end