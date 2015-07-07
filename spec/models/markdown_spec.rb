require 'rails_helper'

RSpec.describe Markdown do
  it "converts markdown to html" do
    expect(Markdown.new.transformed_content("**hello**").strip).to eq("<p><strong>hello</strong></p>")
  end

  it "automatically creates anchors for urls" do
    expect(Markdown.new.transformed_content("https://example.com").strip).to eq('<p><a href="https://example.com" rel="nofollow" target="_blank">https://example.com</a></p>')
  end

  it "will render the text with a strikethrough" do
    expect(Markdown.new.transformed_content("~~this~~").strip).to eq("<p><del>this</del></p>")
  end

  it "will render formatted code" do
    expect(Markdown.new.transformed_content("``` ruby x = 3 ```").strip).to eq("<p><code>ruby x = 3</code></p>")
  end
end
