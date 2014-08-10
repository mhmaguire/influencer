class Look < ActiveRecord::Base
	belongs_to :influencer
	has_many :images, as: :imageable
end
