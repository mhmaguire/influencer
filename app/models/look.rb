# == Schema Information
#
# Table name: looks
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  slug          :string(255)
#  body          :text
#  influencer_id :integer          not null
#  category_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Look < ActiveRecord::Base
	belongs_to :influencer
	has_one :primary_image, as: :imageable, class_name: "Look::PrimaryImage"
	has_many :product_groups
	belongs_to :category

	extend FriendlyId

	friendly_id :title, use: [:slugged, :finders]

	after_create :ensure_primary_image

	accepts_nested_attributes_for :primary_image, :product_groups

	validates :influencer, :title, :body, :category, presence: true

	def primary_product_group
		product_groups.first
	end

	def secondary_product_groups
		groups = product_groups.to_a
		groups.size == 1 ? [] : groups.slice(1 .. -1)
	end

	private

	def ensure_primary_image
		self.primary_image || self.create_primary_image
	end
end
