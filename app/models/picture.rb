class Picture < ActiveRecord::Base
  belongs_to :gallery
	before_create :set_order
	
	def self.order(ids)
		if ids.present?
			update_all(["display_order = STRPOS(?, ','||id||',')", ",#{ids.join(',')},"])
		end
		true
	end
	
	has_attached_file :image,
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
	
	validates_attachment :image, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..2.megabytes }
  
private

def set_order
	self.display_order = 0
end
  
end