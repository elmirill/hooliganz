class ApplicationController < ActionController::Base
  include AmazonSignature
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_action :set_core_setting, :calc_amazon_hash

	def set_core_setting
		@core_setting = CoreSetting.find(1)
	end

  def calc_amazon_hash
    @amazon_hash = AmazonSignature::data_hash
  end

end
