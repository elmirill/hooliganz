class Training < ActiveRecord::Base
	has_many :training_pictures
	accepts_nested_attributes_for :training_pictures, reject_if: :all_blank,
																										allow_destroy: true
end