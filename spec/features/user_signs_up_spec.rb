require 'spec_helper'

feature 'User signs up' do
  scenario 'with valid email and password' do
    sign_up_with 'test_user@domain.com', valid_password

    confirmation_link_sent_message = 'A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.'

    expect(page).to have_content(confirmation_link_sent_message)
  end

  scenario 'with valid email and password' do
    sign_up_with valid_email, valid_password

    email_already_taken_message = 'Email has already been taken'

    expect(page).to raise_error(email_already_taken_message)
  end

  scenario 'with invalid email' do
    sign_up_with invalid_email, valid_password

    expect(page).to have_content('Email is invalid')
  end

  scenario 'with blank password' do
    sign_up_with valid_email, ''

    expect(page).to have_content('Login')
  end



  def sign_up_with(email, password)
    visit 'users/sign_up' #visit new_user_registration_path

    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign up'
  end

  def valid_email
    'owner@domain.com'
  end

  def invalid_email
    'invalid_email'
  end

  def valid_password
    'password'
  end

  def invalid_password
    'invalid'
  end

end