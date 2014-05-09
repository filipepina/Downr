module MarkdownHelper
  module Helpers
    def render_markdown(html)
      MarkdownHelper::Markdown.render(html).html_safe
    end
  end
end