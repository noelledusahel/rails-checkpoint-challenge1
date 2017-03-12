class SessionsController < ApplicationController

	def new

	end 

	def create

		@user = User.find_by(email: params[:session][:email])

		if @user && @user.authenticate(params[:session][:password])
			session[:user] = @user.id
			redirect_to concerts_path
		else
			@errors = ["Incorrect Email/Password"]
			render 'new'
		end 
	end 


	def destroy
		session[:user] = nil
		redirect_to concerts_path
	end 

end 