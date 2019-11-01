class CommentLike < ApplicationRecord

	belongs_to :user
  belongs_to :commentary

end
