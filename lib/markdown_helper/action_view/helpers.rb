module MarkdownHelper
  class Helpers < ActionView::Helpers::Helpers
    def render_markdown(html)
      MarkdownHelper::Markdown.render(html).html_safe
    end
  end
end