class Post < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :forum_topics
  belongs_to :user

  mount_uploader :post_image, PostImageUploader
end
