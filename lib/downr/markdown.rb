require 'html/pipeline'

module Downr

  # This class is a wrapper for the
  # render method on Redcarpet
  #
  # @attr [Redcarpet::Markdown] renderer 
  class Markdown
    # static renderer
    @@renderer

    # static options
    @@options

    attr_accessor :renderer
    
    # Creates a new Markdown object
    def initialize
      @@options = Downr.configuration.options
      
      render  = Render.new(@@options)

      @@renderer = Redcarpet::Markdown.new(render, @@options)
    end

    # Renders markdown
    # @param [String] text
    #
    # @return [String] html
    def self.render text 
      html = @@renderer.render(text)
      
      if(@@options[:sanitize_html].present? && @@options[:sanitize_html])
        html = self.sanitize_html(html)
      end
      
      html
    end

    # Sanitizes html input removing tags
    # that are considered "unsafe"
    # 
    # @param [String] html
    # 
    # @return [String] html
    def self.sanitize_html(html)
      HTML::Pipeline::SanitizationFilter.new(html).call.to_s
    end
  end
end
