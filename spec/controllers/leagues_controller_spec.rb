require 'spec_helper'

describe "League Layout" do 
	scenario "User creates a Public league" do 
			visit "leagues/new"

			choose('Public League')
			fill_in "League Name", :with => "Test League"
			click_link "Create League"
				
			expect(page).to have_content "Successfully Created a Public League"
	end
end
