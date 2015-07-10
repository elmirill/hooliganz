class PicturesController < ApplicationController
	
	def index
		@pictures = Picture.all
	end
	
	def new
		@picture = Picture.new
	end
	
	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			flash[:notice] = "Галерея создана"
			redirect_to pictures_path
		else
			render action: 'new'
		end
	end
	
	def show
		
	end
	
	private
	
	def picture_params
		params.require(:picture).permit(:image)
	end
		
end