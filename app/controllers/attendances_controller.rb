class AttendancesController < ApplicationController


	def new
	end 

	def create
		user = User.find(current_user)
		@attendance = user.attendances.new(concert_id: params[:concert_id])
		respond_to do |format|
			if @attendance.save
				format.html {redirect_to :back, notice: "RSVP successful"}
				format.js {}
				p user.attendances.last
				format.json { render :show, status: :created, location: @attendance}
			else 
				format.html { redirect_to :back}
				format.json { render json: @attendance.errors, status: :unprocessable_entity }
			end 
		end

	end 



end 