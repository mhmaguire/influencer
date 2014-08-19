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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_group do
  end
end
