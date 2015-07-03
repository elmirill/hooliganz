require 'rails_helper'

describe "Static pages" do

	subject { page }

  describe "Home page" do
  	it "should have the content 'Hooliganz'" do
  		visit '/'
  		expect(page).to have_content('Hooliganz')
  	end
  end
end
