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

require 'rails_helper'

RSpec.describe ProductGroup::Item, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
