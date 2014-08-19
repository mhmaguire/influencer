# == Schema Information
#
# Table name: product_groups
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  look_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class ProductGroup < ActiveRecord::Base
	belongs_to :look
	has_many :items, class_name: "ProductGroup::Item", foreign_key: :group_id
	has_many :products, through: :items
end
