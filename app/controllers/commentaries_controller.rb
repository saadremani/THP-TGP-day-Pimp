class CommentariesController < ApplicationController

	before_action :authenticate_user, only: [:new, :edit, :update, :destroy]

	def show
		@commentary = Commentary.find(params[:id])
	end

	def new
		@gossip = Gossip.find(params[:gossip_id])
		@commentary = Commentary.new
	end	
	
	def create
		
		@gossip = Gossip.find(params[:gossip_id])
		c = params[:commentary]
		@commentary = Commentary.new(title: c[:title],content: c[:content], gossip: @gossip, user: current_user) 
		if @commentary.save
			redirect_to gossip_path(@commentary.gossip.id,1)
		else
			render 'new'
		end
			
	end

	def edit
		@commentary = Commentary.find(params[:id])
	end

	def update
		@commentary = Commentary.find(params[:id])
		c = params[:commentary]

		if @commentary.update(title: c[:title],content: c[:content]) then
			redirect_to gossip_commentary_path(@commentary.gossip.id, @commentary.id)
		else
			render 'edit'
		end
	end

	def destroy

		@commentary = Commentary.find(params[:id])
		@commentary.destroy

		redirect_to gossip_path(@commentary.gossip.id,3)
				
	end
		

	private

  def authenticate_user
    unless current_user
      flash[:login] = "Please log in."
      redirect_to new_session_path
    end
  end

end
