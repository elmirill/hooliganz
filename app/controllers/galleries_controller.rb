class GalleriesController < ApplicationController
	
#	def new
#		@gallery = Gallery.new
#		3.times { @gallery.pictures.build }
#	end
	
#	def create
#		@gallery = Gallery.new(gallery_params)
#		if @gallery.save
#			flash[:notice] = "Галерея создана"
#			redirect_to "/gallery"
#		else
#			render action: 'new'
#		end
#	end
	
  def show
		@gallery = Gallery.where(name: 'main').first
  end

  def edit
		@gallery = Gallery.where(name: 'main').first
#		3.times { @gallery.pictures.build }
  end

	def update
		@gallery = Gallery.find(params[:id])
		if @gallery.update_attributes(gallery_params)
			flash[:notice] = "Галерея обновлена"
			redirect_to "/gallery"
		else
			render action: 'edit'
		end
	end
	
	
	private
	
	def gallery_params
		params.require(:gallery).permit(:name, :description,
			pictures_attributes: [:id, :image, :caption, :image_file_name, :image_file_size, :image_content_type, :image_updated_at, :_destroy])
  end
	
end