require 'redcarpet'

module Downr

  class Markdown
    @@renderer

    attr_accessor :renderer

    def initialize
      options = Downr.configuration.options
      render  = Render.new

      @@renderer = Redcarpet::Markdown.new(render, options)
    end
    def self.render text 
      @@renderer.render(text)
    end
  end
end