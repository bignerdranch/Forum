class Markdown
  def transformed_content(text)
    renderer_options = {
      filter_html:     false,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
    }

    markdown_options = {
      autolink:           true,
      strikethrough:      true,
      fenced_code_blocks: true,
    }

    renderer = HTMLWithPygments.new(renderer_options)
    markdown = Redcarpet::Markdown.new(renderer, markdown_options)

    markdown.render(text).html_safe
  end
end
