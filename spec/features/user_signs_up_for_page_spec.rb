require 'rails_helper'

RSpec.feature 'User signs up for page' do
  scenario 'Sign up feature tour' do
    visit '/'
    expect(page).to have_content('Log in')
    click_on('Sign up')
    fill_in 'Email', :with => 'raven@bignerdranch.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on('Sign up')
    open_email('raven@bignerdranch.com')
    expect(current_email).to have_content('Welcome raven@bignerdranch.com!')
    current_email.click_on('Confirm my account')
    fill_in 'Email', :with => 'raven@bignerdranch.com'
    fill_in 'Password', :with => 'password'
    click_on('Log in')
    expect(page).to have_content('Big Nerd Ranch Forum')
    expect(page).to have_link('Logout')
  end
end
