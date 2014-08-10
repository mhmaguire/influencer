class Influencer < ActiveRecord::Base
	has_many :looks
	has_one :image, as: :imageable

	def image_styles
		{
			large: "331x518",
			medium: "210x400"
		}
	end

	def self.alphabetize
		all.sort_by{ |i| i.name }.group_by{|i| i.name.first }
	end
end
