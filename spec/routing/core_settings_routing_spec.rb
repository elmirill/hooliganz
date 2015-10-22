require "rails_helper"

RSpec.describe CoreSettingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/core_settings").to route_to("core_settings#index")
    end

    it "routes to #new" do
      expect(:get => "/core_settings/new").to route_to("core_settings#new")
    end

    it "routes to #show" do
      expect(:get => "/core_settings/1").to route_to("core_settings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/core_settings/1/edit").to route_to("core_settings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/core_settings").to route_to("core_settings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/core_settings/1").to route_to("core_settings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/core_settings/1").to route_to("core_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/core_settings/1").to route_to("core_settings#destroy", :id => "1")
    end

  end
end
