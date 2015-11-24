class LocationsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@compliment = Compliment.new
		render :new
	end

	def show
		@player = User.all.where.not(id: current_user.id) 
		@user = User.find(session[:user_id])
		gon.users = User.all
		pictures = Hash.new
		User.all.each do |user|
			pictures[user.id] = user.avatar.url(:thumb)
		end
		gon.pictures = pictures 
	end

	def create
		@user = User.find(params[:user_id])
		@compliment = @user.compliments_received.new(compliment_params)
		@compliment.complimentor_id = current_user.id
		p "@user is:"
		p @user
		p "current_user is:"
		p current_user
		p "NEW compliment" * 100
		p @compliment
		if @compliment.save
			redirect_to @user
		else
			#@user = User.find(params[:user_id])
			render 'users/show'
		end
	end
end
