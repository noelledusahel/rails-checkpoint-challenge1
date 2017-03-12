class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
	end

	def show
		@concert = Concert.find_by(id: params[:id])

	end 

	def new 
		@concert = Concert.new
	end 

	def create
		@concert = Concert.new(concert_params)

		if @concert.save
			redirect_to concert_path(@concert)
		else
			render 'new'
		end 
	end 

	private

	def concert_params
		params.require(:concert).permit(:band, :venue, :date, :start_time)
	end 


end 