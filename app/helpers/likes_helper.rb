module LikesHelper

	def match(user,gossip)
		return Like.find_by(user: user, gossip: gossip)
	end

end
