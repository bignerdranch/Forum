class Post < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :forum_topics
  belongs_to :user
end
