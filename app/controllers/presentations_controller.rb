class PresentationsController < ApplicationController
	# Display only top 5 feedbacks
	def index
		@all_feedbacks = Feedback.order("weight DESC").limit(5)


		# With a little more time I would build out a json request and package the @all_feedbacks
		# into a hash and have all the info loaded onto the front end
		# from there I'd add buttons for each 5 feedbacks and use jQuery to have them animate onto the screen

	end
end