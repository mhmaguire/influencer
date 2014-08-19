# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  brand       :string(255)
#  model       :string(255)
#  price_cents :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
	has_one :image, as: :imageable, class_name: "Product::Image"
	after_create :ensure_image

	private 

	def ensure_image
		self.image || self.create_image
	end
end
