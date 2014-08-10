class Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true
	has_attached_file :attachment, styles: Proc.new {|i| a.instance.imageable.image_styles}
	delegate :url, to: :attachment
end
