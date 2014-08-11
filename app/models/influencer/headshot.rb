class Influencer::Headshot < Image
	has_attached_file :attachment, styles: {small: "153x180"}, default_url: 'headshot/:style/missing.png'
	validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end