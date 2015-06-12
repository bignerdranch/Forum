class ForumTopics < ActiveRecord::Migration
  def change
    create_table :forum_topics do |t|
      t.string :title
      t.boolean :archived, default: false
    end
  end
end
