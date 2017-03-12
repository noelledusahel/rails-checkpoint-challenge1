class UsersController < ApplicationController

	def new
		@user = User.new
	end 

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user] = @user.id
			redirect_to concerts_path
		else
			@errors = @user.errors.full_messages
			render 'new'
		end 
	end 

	private 

	def user_params 
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end 