class BikesController < ApplicationController
	def index
		@bikes = Bike.all 
		@bike = Bike.new
	end

	def show
		@bike = Bike.find(params[:id])
	end

	def new
	end

	def edit 
		@bike = Bike.find(params[:id])
	end

	def create
		@bike = Bike.new(bike_params)
		@bike.save
		redirect_to @bike
	end

	def update
		@bike = Bike.find(params[:id])

		if 
		@bike.update(bike_params)
		redirect_to @bike
		else
			render 'edit'
		end
	end

	def destroy
		@bike = Bike.find(params[:id])
		@bike.destroy
		redirect_to bikes_path
	end

	private
		def bike_params
			params.require(:bike).permit(:name, :image)
		end

end
