class CommentLikesController < ApplicationController


	def create
	
	u = User.find(params[:user])
	c = Commentary.find(params[:commentary])
	cl = CommentLike.new
	cl.user = u
	cl.commentary = c
	if cl.save then
		redirect_to gossips_path
	end
	
	end

	def destroy

	u = User.find(params[:user])
	c = Commentary.find(params[:commentary])

	cl =	CommentLike.find_by(user: u, commentary: c)
	cl.destroy
	redirect_to show_gossip_path(c.gossip.id)
	end

end
