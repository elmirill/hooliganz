require 'rails_helper'

RSpec.describe "trainings/show", type: :view do
  before(:each) do
    @training = assign(:training, Training.create!(
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
