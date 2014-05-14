module Downr
  module Helpers
    ##
    # View helper to render a variable containing
    # markdown in the view, calls html_safe on it!
    def render_markdown(html)
      Downr::Markdown.render(html).html_safe
    end
  end
end
