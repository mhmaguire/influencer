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

class Look::PrimaryImage < Image
	has_attached_file :attachment, styles: {large: "331x518", thumb: '100x100'}, default_url: 'look_image/:style/missing.png'
	validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
