class ApplicationController < ActionController::Base

	include SessionsHelper
	include LikesHelper
	include CommentLikesHelper

end
