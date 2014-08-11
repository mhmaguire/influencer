class Influencer < ActiveRecord::Base
	has_many :looks
	has_one :headshot, as: :imageable

	accepts_nested_attributes_for :headshot

	def self.alphabetize
		all.sort_by{ |i| i.name }.group_by{|i| i.name.first }
	end
end
