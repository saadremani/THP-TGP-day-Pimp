class LikesController < ApplicationController

	def create
	
	u = User.find(params[:user])
	g = Gossip.find(params[:gossip])
	l = Like.new
	l.user = u
	l.gossip = g
	if l.save then
		redirect_to gossips_path
	end
	
	end

	def destroy

	u = User.find(params[:user])
	g = Gossip.find(params[:gossip])

	l=	Like.find_by(user: u, gossip: g)
	l.destroy
	redirect_to gossips_path
	end

end
