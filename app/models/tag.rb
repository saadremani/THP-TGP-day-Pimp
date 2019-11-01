class Tag < ApplicationRecord

	has_many :linktags
	has_many :gossips, through: :linktags

end
