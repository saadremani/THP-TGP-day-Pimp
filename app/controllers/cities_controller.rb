class CitiesController < ApplicationController
	
	def show

		@city = City.find(params[:id])
		@gossips_array = @city.gossips_all	

	end

end
