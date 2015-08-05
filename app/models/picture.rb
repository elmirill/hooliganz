class Picture < ActiveRecord::Base
  belongs_to :gallery
	
	has_attached_file :image,
						styles: {
							thumb: {
								geometry: "350x350#",
								quality: "70",
								format: "JPG"
								}
							},
						preserve_files: true
	validates_attachment :image, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..5.megabytes }
end
