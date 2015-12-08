class News < ActiveRecord::Base
	
	has_attached_file :thumbnail,
						styles: {
							original: {
								geometry: "400x400>",
								quality: "60",
								format: "JPG"
								}
							}
	
	validates_attachment :thumbnail, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..300.kilobytes }
	
end
