class City < ApplicationRecord

	has_many :users

	def gossips_all

		gossips_array = []

		self.users.each do |u|
			u.gossips.each do |g|
				gossips_array << g
			end
		end
	return gossips_array
	end
end
