require 'rails_helper'
require 'feature_helper'

RSpec.feature 'User creates forum topic' do

  before do
    log_in_with 'raven@bignerdranch.com', 'password'
  end

  scenario 'user creates a new forum topic' do
    click_on('Create a new forum topic')
    fill_in 'Title', with: 'BNR iOS book'
    click_on('Create Forum topic')
    expect(page).to have_content("You're at the Forum Topic Page")
  end
end
