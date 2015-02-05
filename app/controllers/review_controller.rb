class ReviewController < ApplicationController

	def create
		@restaurant = Restaurant.find (params[:restaurant_id])
		@review = @restaurant.reviews.create(review_params)
	end

Private
	def review_params
		params.require(:review).permit(:user_id, :comment, :rating)
	end
end
