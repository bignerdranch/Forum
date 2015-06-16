require 'rails_helper'
require 'feature_helper'

RSpec.feature 'User can post to forum topic' do
  before do
    log_in_with 'raven@bignerdranch.com', 'password'
  end

  scenario 'user can post to forum topic' do
    click_on('Create New Forum Topic')
    fill_in 'Title', with: 'BNR iOS Books'
    click_on('Create Forum topic')
    expect(page).to have_content('BNR iOS Books')
    click_button('Create a new post')
    expect(page).to have_content('BNR iOS Books')
    fill_in 'Content', with: 'This book is awesome!'
    click_button('Submit')
    expect(page).to have_content('This book is awesome!')
  end
end
