class Post < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :forum_topic
  belongs_to :user

  mount_uploader :post_image, PostImageUploader

  searchable do
    text :content
  end

  delegate :title, to: :forum_topic
  delegate :username, to: :user
end
