require 'rails_helper'
require 'capybara/rspec'

describe "scheduling an email", type: :feature do
  it "creates an email" do
  	visit '/emails/new'
  	within("#new_email") do
  	  fill_in 'To', :with => 'vc@vascoconde.com'
  	  fill_in 'Subject', :with => 'Test Email'
  	end
  	click_button 'Create Email'
  	expect(page).to have_content 'Test Email'
  end
end
