# == Schema Information
#
# Table name: images
#
#  id                      :integer          not null, primary key
#  type                    :string(255)
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  imageable_id            :integer
#  imageable_type          :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#

require 'rails_helper'

RSpec.describe Image, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
