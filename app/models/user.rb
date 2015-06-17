class User < ActiveRecord::Base
  include Gravtastic
  gravtastic

  before_save { email.downcase! }

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable,
  :authentication_keys => [:login]

  validates :username, presence: true, uniqueness: { case_sensitive: false }

  has_many :forum_topics
  has_many :posts

  attr_accessor :login

  mount_uploader :avatar, AvatarUploader

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["(username) = :value OR (email) = :value",
        { :value => login.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end
end
