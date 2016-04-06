require 'spec_helper'

describe "the signin process", :type => :feature do
  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'password')
  # end

  it "login page working" do
    visit '/'
    expect(page).to have_content 'Welcome'
  end

  it "signs me in" do
    visit '/'
    within ('header nav') do
      click_link 'Login'
    end
    within("form#new_user") do
      fill_in 'Email', :with => 'owner@domain.com'
      fill_in 'Password', :with => 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
