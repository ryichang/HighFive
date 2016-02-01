class UsersController < ApplicationController
	def new
		@user = User.new
		# @compliment = Compliment.new
		render :new
	end

	def show
		@user = User.find(params[:id])
		@compliment = Compliment.new
		# @complimentupdate = Compliment.where(created_at: (Time.now - 2.hour)..Time.now).count.to_i
		render :show
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
		@user = User.new(user_params)
		if @user.save
	      login(@user) # <-- login the user
	      redirect_to location_path(@user)# <-- go to show
	  else
	  	render :new
	  end
	end

	def edit
		@user = User.find(params[:id])
		render :edit
	end

	def update
		if session[:user_id]               
			@user = User.find(session[:user_id])
			updated_attributes = params.require(:user).permit(:first_name, :last_name, :avatar, :latitude, :longitude)
			p "PARAMS HERE: #{updated_attributes}"
			@user.update_attributes(updated_attributes)
			redirect_to @user
		end 
	end


	   private
	   def user_params
	   	params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
	   end


	end
