require "rails_helper"
include SunspotMatchers

RSpec.describe Post, type: :model do
  describe "searchable fields" do
    it { should have_searchable_field(:content) }
  end
end
