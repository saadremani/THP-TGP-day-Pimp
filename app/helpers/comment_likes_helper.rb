module CommentLikesHelper
	def match_c(user,commentary)
		return CommentLike.find_by(user: user, commentary: commentary)
	end
end
