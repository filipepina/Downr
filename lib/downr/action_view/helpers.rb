module Downr

  # Helper namespace for views
  module Helpers

    # View helper to render a variable containing
    # markdown in the view, calls html_safe on it!
    #
    # @param [String] markdown the markdown to render
    #
    # @return [String] html safe string
    def render_markdown(markdown)
      Downr::Markdown.render(markdown).html_safe
    end
  end
end
