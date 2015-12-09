class News < ActiveRecord::Base
	
	has_attached_file :thumbnail,
						styles: {
							thumb: {
								geometry: "350x350#",
								quality: "60",
								format: "JPG"
								},
							original: {
								geometry: "1500x1500>",
								quality: "60",
								format: "JPG"
								}
							},
						preserve_files: true
	
	validates_attachment :thumbnail, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..1.megabytes }
	
end
