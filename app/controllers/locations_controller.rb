class LocationsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def show
		@player = User.all 
		@user = User.find(session[:user_id])
	end

end
