# == Schema Information
#
# Table name: influencers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Influencer < ActiveRecord::Base
	has_many :looks
	has_one :headshot, as: :imageable

	after_create :ensure_headshot

	accepts_nested_attributes_for :headshot

	def self.alphabetize
		all.sort_by{ |i| i.name }.group_by{|i| i.name.first }
	end

	private

	def ensure_headshot
		self.headshot || self.create_headshot
	end
end
