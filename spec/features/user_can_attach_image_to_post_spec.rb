require "rails_helper"
require "feature_helper"

RSpec.feature "user can attach an image to post" do
  before do
    log_in_with 'raven@bignerdranch.com', 'password'
    create_new_forum_topic 'BNR iOS book'
  end

  scenario "user can attach image to post" do
    click_button("Create a new post")
    fill_in "Content", with: "This book is awesome!"
    attach_file("post_post_image", "spec/fixtures/images/mushroom.jpeg")
    click_button("Submit")
    expect(page).to have_content("BNR iOS book")
    expect(page).to have_css("img[alt=Mushroom]")
  end
end
