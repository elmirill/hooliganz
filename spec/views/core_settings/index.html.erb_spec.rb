require 'rails_helper'

RSpec.describe "core_settings/index", type: :view do
  before(:each) do
    assign(:core_settings, [
      CoreSetting.create!(
        :main_phone => "Main Phone",
        :main_email => "Main Email",
        :address => "Address",
        :site_description => "Site Description",
        :vk_link => "Vk Link",
        :instagram_link => "Instagram Link",
        :youtube_link => "Youtube Link"
      ),
      CoreSetting.create!(
        :main_phone => "Main Phone",
        :main_email => "Main Email",
        :address => "Address",
        :site_description => "Site Description",
        :vk_link => "Vk Link",
        :instagram_link => "Instagram Link",
        :youtube_link => "Youtube Link"
      )
    ])
  end

  it "renders a list of core_settings" do
    render
    assert_select "tr>td", :text => "Main Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Main Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Site Description".to_s, :count => 2
    assert_select "tr>td", :text => "Vk Link".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram Link".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube Link".to_s, :count => 2
  end
end
