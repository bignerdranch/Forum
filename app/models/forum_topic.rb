class ForumTopic < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  belongs_to :user
  has_many :posts, dependent: :destroy
end
