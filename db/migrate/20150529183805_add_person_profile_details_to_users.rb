class AddPersonProfileDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github_account, :string
    add_column :users, :twitter_account, :string
    add_column :users, :bio, :text
    add_column :users, :position, :string
  end
end
