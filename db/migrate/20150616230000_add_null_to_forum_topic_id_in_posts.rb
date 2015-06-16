class AddNullToForumTopicIdInPosts < ActiveRecord::Migration
  def change
    change_column :posts, :forum_topic_id, :integer, null: false
  end
end
