class SessionsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
   		@user = User.confirm(user_params)
   		if @user
   			login(@user)
   			redirect_to location_path(@user)
   		else
   			redirect_to new_session_path
   		end
	end

	def destroy
		p "in logout route" * 1000
		logout
		redirect_to root_url#, notice: "Logged Out"
	end
end
