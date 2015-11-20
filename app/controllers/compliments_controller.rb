class ComplimentsController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@compliment = Compliment.find(params[:id])
	end

	def create
		@user = User.find(params[:user_id])
		@compliment = @user.compliments.new(compliment_params)
		if @compliment.save
			redirect_to @user
		else
			@user = User.find(params[:user_id])
			render 'users/show'
		end
	end

	def compliment_params
		params.require(:compliment).permit(:high_five, :comments, :user_id)
	end
end
