require 'rails_helper'

RSpec.feature 'User creates forum topic' do

  scenario 'User clicks new forum topic' do
    log_in_with 'raven@bignerdranch.com', 'password'
    click_on('Create a new forum topic')
    expect(page).to have_content('New forum topic')
  end

  def log_in_with(email, password)
    User.create!(email:email, password: password, confirmed_at: 1.minute.ago)
    visit new_user_session_path
    fill_in 'Email', with: email
    fill_in 'user_password', with: password
    click_button('Log in')
  end
end
