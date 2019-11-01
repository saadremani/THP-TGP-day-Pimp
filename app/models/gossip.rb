class Gossip < ApplicationRecord

	has_many :commentaries


	has_many :linktags
	has_many :tags, through: :linktags

	has_many :likes
	has_many :likers, through: :likes, class_name: "User"

	belongs_to :user

	validates :title, presence: true, length: { minimum: 2 }
	validates :content, presence: true, length: { minimum: 2 }

end
