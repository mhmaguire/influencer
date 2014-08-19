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

class Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true
	delegate :url, to: :attachment
end
