class AddUserIdToForumTopics < ActiveRecord::Migration
  def change
    add_column :forum_topics, :user_id, :integer
  end
end
