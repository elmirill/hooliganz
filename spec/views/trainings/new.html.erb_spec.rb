require 'rails_helper'

RSpec.describe "trainings/new", type: :view do
  before(:each) do
    assign(:training, Training.new(
      :content => "MyText"
    ))
  end

  it "renders new training form" do
    render

    assert_select "form[action=?][method=?]", trainings_path, "post" do

      assert_select "textarea#training_content[name=?]", "training[content]"
    end
  end
end
