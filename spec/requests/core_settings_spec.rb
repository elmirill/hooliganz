require 'rails_helper'

RSpec.describe "CoreSettings", type: :request do
  describe "GET /core_settings" do
    it "works! (now write some real specs)" do
      get core_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
