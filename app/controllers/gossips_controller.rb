class GossipsController < ApplicationController

	before_action :authenticate_user, only: [:new, :edit, :update, :destroy]
	before_action :authenticate_user_gossip, only: [:edit, :update, :destroy]
	
	def index
		@gossips_array = Gossip.all
	end

	def show
		@gossip = Gossip.find(params[:id])
		@commentaries_array = @gossip.commentaries
	end

	def new
		@gossip = Gossip.all[0]
		@tags_array = Tag.all
	end


	def create
		@tags_array = Tag.all
		u = current_user
		

		post_params = params.require(:gossip).permit(:title, :content)
		@gossip = Gossip.new(post_params)
		@gossip.user = u
		
		t = Tag.find(params[:tag])
		lt = Linktag.new(gossip: @gossip, tag: t)

		if @gossip.save && lt.save then
			redirect_to gossips_path(1)
		else
			render 'new'
		end



	end

	def edit
		@gossip = Gossip.find(params[:id].to_i)
	end

	
	def update

		@gossip = Gossip.find(params[:id].to_i)
		post_params = params.require(:gossip).permit(:title, :content)


		if @gossip.update(post_params) then
			redirect_to gossip_path(params[:id],2)
		else
			render 'edit'
		end
	
	end

	def destroy

		@gossip = Gossip.find(params[:id].to_i)
		@gossip.destroy
		redirect_to gossips_path(3)

	end

	private

  def authenticate_user
    unless current_user
      flash[:login] = "Please log in."
      redirect_to new_session_path
    end
  end

	def authenticate_user_gossip

		g = Gossip.find(params[:id])
		unless current_user.id == g.user.id then
			flash[:auth] = "Vous n'êtes pas le propriétaire du ragot"
			redirect_to gossips_path
		end

	end
end
