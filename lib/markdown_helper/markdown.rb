require 'redcarpet'

module MarkdownHelper

  class Markdown
    @@renderer

    attr_accessor :renderer

    def initialize
      options = MarkdownHelper.configuration.options
      render  = Render.new

      @@renderer = Redcarpet::Markdown.new(render, options)
    end
    def self.render text 
      @@renderer.render(text)
    end
  end
end