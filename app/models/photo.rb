class Photo < ApplicationRecord
	has_one_attached :image

	def thumbnail
		return self.image.variant(resize: '200x200')
	end
end
