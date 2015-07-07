class PostDecorator < Draper::Decorator
  delegate_all

  decorates_association :user

  def formatted_content
    markdown = Markdown.new
    markdown.transformed_content(content)
  end
end
