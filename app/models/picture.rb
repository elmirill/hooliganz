class Picture < ActiveRecord::Base
	
	belongs_to :gallery
	has_attached_file :image, styles: { small: "300x300", large: "700x700" }
	validates_attachment :image, presence: true,
		content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
		size: { in: 0..5.megabytes }
	
end
