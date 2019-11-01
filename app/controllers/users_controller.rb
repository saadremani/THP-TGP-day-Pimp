class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def new 
		@user = User.new
		@cities_array = City.all
	end

	def create
	
		post_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :password)

		@cities_array = City.all
		@user = User.new(post_params)
		@user.city = City.find(params[:city])
		
		if @user.save then
      flash[:regis] = "Vous êtes maintenant inscrit."
			session[:user_id] = @user.id
			redirect_to gossips_path
		else
			render 'new'
		end

	end	
	
	def destroy
		session.delete(:user_id)
	end

end
