require 'rails_helper'
require 'feature_helper'

RSpec.feature 'User creates forum topic' do

  before do
    log_in_with 'raven@bignerdranch.com', 'password'
  end

  scenario 'User clicks new forum topic' do
    click_on('Create a new forum topic')
    expect(page).to have_content('Title:')
  end

  scenario 'User can create a new forum topic' do
    visit new_forum_topic_path
    fill_in 'Title', with: 'BNR iOS book'
    click_on 'Create Forum topic'
  end
end
