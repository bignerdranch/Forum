class Post < ActiveRecord::Base
  belongs_to :forum_topics
  belongs_to :user
end
