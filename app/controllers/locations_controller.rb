class LocationsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def show
		@user = User.all 
	end

end
