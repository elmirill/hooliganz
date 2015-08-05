class Picture < ActiveRecord::Base
  belongs_to :gallery
	
	has_attached_file :image,
						styles: { thumb: "350x350#" },
						preserve_files: true,
            :storage => :s3,
            :bucket  => ENV['MY_BUCKET_NAME']
	validates_attachment :image, 
						content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
						size: { in: 0..5.megabytes }
end
