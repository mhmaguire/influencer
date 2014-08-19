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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
  end
end
