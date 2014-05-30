module Downr

  # This class is a wrapper for the
  # render method on Redcarpet
  #
  # @attr [Redcarpet::Markdown] renderer 
  class Markdown
    # static renderer
    @@renderer

    attr_accessor :renderer
    
    # Creates a new Markdown object
    def initialize
      options = Downr.configuration.options
      
      render  = Render.new(options)

      @@renderer = Redcarpet::Markdown.new(render, options)
    end

    # Renders markdown
    # @param [String] text
    #
    # @return [String] html
    def self.render text 
      @@renderer.render(text)
    end
  end
end
