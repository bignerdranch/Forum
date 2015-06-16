class Post < ActiveRecord::Base
  belongs_to :forum_topics, class_name: "ForumTopic",
                            foreign_key: "forum_topic_id"
  belongs_to :user
end
