class GalleriesController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	before_action :set_gallery, only: [:show, :edit]
	
#	def new
#		@gallery = Gallery.new
#	end
#	
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
		@pictures = @gallery.pictures.order("created_at DESC")
  end

  def edit
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
	
	def set_gallery
		@gallery = Gallery.where(name: 'main').first
	end
	
	def gallery_params
		params.require(:gallery).permit(:name, :description,
			pictures_attributes: [:id, :image, :caption, :alt, :_destroy])
  end
	
end