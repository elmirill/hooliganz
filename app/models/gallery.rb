class Gallery < ActiveRecord::Base
	belongs_to :user
	has_many :pictures
	
	validates :name, uniqueness: true
	accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
	
end
