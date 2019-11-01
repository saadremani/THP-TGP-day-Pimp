class Commentary < ApplicationRecord
	
	belongs_to :gossip
	belongs_to :user
	
	has_many :comment_likes
	has_many :c_likers, through: :comment_likes, class_name: "User"
	
	validates :title, presence: true, length: { minimum: 2 }
	validates :content, presence: true, length: { minimum: 2 }

end
