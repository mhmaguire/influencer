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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :look do
  end
end
