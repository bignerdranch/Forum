class ForumTopicDecorator < Draper::Decorator
  delegate_all

  decorates_association :posts
end
