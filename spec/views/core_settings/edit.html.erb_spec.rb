require 'rails_helper'

RSpec.describe "core_settings/edit", type: :view do
  before(:each) do
    @core_setting = assign(:core_setting, CoreSetting.create!(
      :main_phone => "MyString",
      :main_email => "MyString",
      :address => "MyString",
      :site_description => "MyString",
      :vk_link => "MyString",
      :instagram_link => "MyString",
      :youtube_link => "MyString"
    ))
  end

  it "renders the edit core_setting form" do
    render

    assert_select "form[action=?][method=?]", core_setting_path(@core_setting), "post" do

      assert_select "input#core_setting_main_phone[name=?]", "core_setting[main_phone]"

      assert_select "input#core_setting_main_email[name=?]", "core_setting[main_email]"

      assert_select "input#core_setting_address[name=?]", "core_setting[address]"

      assert_select "input#core_setting_site_description[name=?]", "core_setting[site_description]"

      assert_select "input#core_setting_vk_link[name=?]", "core_setting[vk_link]"

      assert_select "input#core_setting_instagram_link[name=?]", "core_setting[instagram_link]"

      assert_select "input#core_setting_youtube_link[name=?]", "core_setting[youtube_link]"
    end
  end
end
