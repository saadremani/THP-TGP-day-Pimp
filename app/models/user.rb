class User < ApplicationRecord

	has_secure_password

	has_many :gossips
	has_many :commentaries

	has_many :likes
	has_many :crushs, through: :likes, source: :gossip

	
	has_many :comment_likes
	has_many :c_crushs, through: :comment_likes, source: :commentary

	belongs_to :city


	validates :first_name, presence: true, length: { minimum: 2 }
	validates :last_name, presence: true, length: { minimum: 2 }
	validates :email, presence: true, uniqueness: true
	validates :description, presence: true
	validates :age, presence: true
	validates :password, presence: true, length: { minimum: 6 }

end
