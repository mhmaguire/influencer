class Influencer < ActiveRecord::Base
	has_many :looks
	has_one :image, as: :imageable

	def image_styles
		{
			large: "331x518",
			medium: "210x400"
		}
	end
end
