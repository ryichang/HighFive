class LocationsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def show
		@player = User.all.where.not(id: current_user.id) 
		@user = User.find(session[:user_id])
	end

end
