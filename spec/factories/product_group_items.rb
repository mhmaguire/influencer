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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_group_item, :class => 'ProductGroup::Item' do
  end
end
