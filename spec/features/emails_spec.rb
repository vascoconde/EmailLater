require 'rails_helper'
require 'capybara/rspec'

describe "scheduling an email", type: :feature do
  it "creates and shows an email on the scheduled list" do
  	stub_request(:get, "https://pozzad-email-validator.p.mashape.com/emailvalidator/validateEmail/vc@vascoconde.com").
      with(:headers => {'Accept'=>'application/json', 'X-Mashape-Key'=>'YIvLAWUZkQmsh5MIx3Szar2vMfb9p1vEQhrjsnTulnbpmY7OCi'}).
      to_return(:status => 200, :body => '{ "isValid": true }', :headers => {})

  	visit '/emails/new'
  	within("#new_email") do
  	  fill_in 'To', :with => 'vc@vascoconde.com'
  	  fill_in 'Subject', :with => 'Test Email Subject'
  	end
  	click_button 'Create Email'
  	expect(page).to have_content 'Test Email Subject'
  	    DatabaseCleaner.clean

  end
end
