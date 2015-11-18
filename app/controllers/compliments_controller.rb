class ComplimentsController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@compliment = Compliment.find(params[:id])
	end

	def create
		@user = User.find(params[:user_id])
		@compliment = @user.compliments.create(params[:compliment].permit(:high_five))
		@compliment.user_id = current_user.id
		if @compliment.save
			redirect_to @user
		else
			@user = User.find(params[:user_id])
			render 'users/show'
		end
	end
end
