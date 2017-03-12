class AttendancesController < ApplicationController


	def new
	end 

	def create
		user = User.find(current_user)
		@attendance = user.attendances.new(concert_id: params[:concert_id])

		if @attendance.save
			redirect_to :back
		else 
			redirect_to :back
		end 
	end

	

end 