require 'rails_helper'

RSpec.describe "core_settings/show", type: :view do
  before(:each) do
    @core_setting = assign(:core_setting, CoreSetting.create!(
      :main_phone => "Main Phone",
      :main_email => "Main Email",
      :address => "Address",
      :site_description => "Site Description",
      :vk_link => "Vk Link",
      :instagram_link => "Instagram Link",
      :youtube_link => "Youtube Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Main Phone/)
    expect(rendered).to match(/Main Email/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Site Description/)
    expect(rendered).to match(/Vk Link/)
    expect(rendered).to match(/Instagram Link/)
    expect(rendered).to match(/Youtube Link/)
  end
end
