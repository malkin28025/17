class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurants = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address, :phone))
		@restaurant.save
		redirect_to restaurants_url
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	# def create
	# 	@user = User.create(params[:user])
	# end

end
