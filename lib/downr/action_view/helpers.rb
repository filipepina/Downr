module Downr
  module Helpers
    def render_markdown(html)
      Downr::Markdown.render(html).html_safe
    end
  end
end