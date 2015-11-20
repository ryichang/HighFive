class ComplimentsController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@compliment = Compliment.find(params[:id])
	end

	def create
		@user = User.find(params[:user_id])
		@compliment = @user.compliments.new(compliment_params)
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
			@user = User.find(params[:user_id])
			render 'users/show'
		end
	end

	def compliment_params
		params.require(:compliment).permit(:high_five, :comments, :recipient_id, :complimentor_id)
	end
end
