class PicturesController < ApplicationController
	before_action :authenticate_user!
	
  def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to(:back)
  end
end
