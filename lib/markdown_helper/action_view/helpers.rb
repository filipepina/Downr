module MarkdownHelper::ActionView::Helpers
  def render_markdown(html)
    MarkdownHelper::Markdown.render(html) 
  end
end