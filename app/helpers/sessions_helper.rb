module SessionsHelper

	def current_user
		@_current ||= User.find(session[:user])
	end 

	def logged_in?
		session[:user] != nil
	end 

end 