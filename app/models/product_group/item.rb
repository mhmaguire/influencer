# == Schema Information
#
# Table name: product_group_items
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class ProductGroup::Item < ActiveRecord::Base
	belongs_to :product
	belongs_to :product_group
end
