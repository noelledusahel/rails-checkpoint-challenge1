class ConcertsController < ApplicationController

	def index
		@concerts = Concert.order(:date)
	end

	def show
		@concert = Concert.find_by(id: params[:id])

	end 

	def new 
		@concert = Concert.new
	end 

	def edit
		@concert = Concert.find(params[:id])
	end 

	def create
		@concert = Concert.new(concert_params)

		if @concert.save
			redirect_to concert_path(@concert)
		else
			render 'new'
		end 
	end 

	def update
		@concert = Concert.find(params[:id])
		@concert.update_attributes(concert_params)
		
		if @concert.save
			redirect_to concert_path(@concert)
		else 
			@errors = @concert.errors.full_messages
			render 'edit'
		end 
	end 

	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy

		
		redirect_to concerts_path
	end



	private

	def concert_params
		params.require(:concert).permit(:band, :venue, :date, :start_time)
	end 


end 