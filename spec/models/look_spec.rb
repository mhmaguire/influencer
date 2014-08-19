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

require 'rails_helper'

RSpec.describe Look, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
