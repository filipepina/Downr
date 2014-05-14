require 'redcarpet'

module Downr

  ##
  # This class is a wrapper for a custom
  # Redcarpet object
  class Markdown
    @@renderer

    attr_accessor :renderer
    
    ##
    # Creates a new Markdown object
    #
    # This object is just a wrapper for Redcarpet
    # with a custom renderer and options to give us
    # a more friendly way to update/use it
    #
    def initialize
      options = Downr.configuration.options
      render  = Render.new

      @@renderer = Redcarpet::Markdown.new(render, options)
    end

    ##
    # Renders markdown
    #
    def self.render text 
      @@renderer.render(text)
    end
  end
end
