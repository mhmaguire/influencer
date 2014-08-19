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

require 'rails_helper'

RSpec.describe Product, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
