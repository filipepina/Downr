module MarkdownHelper

  class Markdown
    def initialize
      options = MarkdownHelper.configuration.options
      render  = HTMLRender.new

      @renderer = Redcarpet::Markdown.new(render, options)
    end
    def render text 
      @renderer.render(text).html_safe
    end
  end
end