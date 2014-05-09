require 'redcarpet'

module MarkdownHelper

  class Markdown
    @@renderer

    def initialize
      options = MarkdownHelper.configuration.options
      render  = HTMLRender.new

      @@renderer = Redcarpet::Markdown.new(render, options)
    end
    def self.render text 
      @@renderer.render(text)
    end
  end
end