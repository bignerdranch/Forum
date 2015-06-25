class UserDecorator < Draper::Decorator
  delegate_all

  def thumbnail
    h.image_tag avatar_url, size: "50x50"
  end

  private

  def avatar_url
    object.avatar || object.gravatar_url
  end
end
