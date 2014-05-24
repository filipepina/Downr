module Downr

  # This class wraps both pygmentize and
  # RailsEmoji gems to create a custom renderer
  class Render < Redcarpet::Render::HTML

    # will override the postprocess method to 
    # perform SmartyPants replacements once 
    # the rendering is complete.
    include Redcarpet::Render::SmartyPants

    # Initializes the Render object
    # 
    # @option opts [Boolean] :pygmentize Code colors
    # @option opts [Boolean] :emojify Icons
    def initialize(opt)
      opt = clean_options(opt)
      @options = opt
      super
    end


    # Block-level calls

    # Hook for Redcarpet render 
    # 
    # @param [String] code the code snippet to parse
    # @param [String] language the coding language
    # 
    # @return [String] html
    def block_code(code, language)
      if(@options[:pygmentize])
        return pygmentize(code, language)
      end

      code
    end

    # Pre/post-process

    # Hook for Redcarpet render 
    # 
    # @param [String] full_document the complete doc
    # 
    # @return [String] html
    def postprocess(full_document)
      if(@options[:emojify])
        return emojify(full_document)
      end

      full_document
    end

    private
      # Ensures we have options defined
      # 
      # @private
      # 
      # @option opts [Boolean] :pygmentize Code colors
      # @option opts [Boolean] :emojify Icons
      # 
      # @return [options] the new hash
      def clean_options opts
        a = {}

        if(opts.has_key?(:pygmentize))
          a[:pygmentize] = opts[:pygmentize]
        else
          a[:pygmentize] = false
        end

        if(opts.has_key?(:emojify))
          a[:emojify] = opts[:emojify]
        else
          a[:emojify] = false
        end
        
        return a
      end

      #Uses Pygmentize to color code
      #
      # @private
      # 
      # @param [String] code the code snippet to parse
      # @param [String] language the coding language
      # 
      # @return [String] html
      def pygmentize(code, language)
        language = language.nil? ? :sh : language
        Pygmentize.process(code, language)
      end

      # Renders emojis by parsing the string
      #
      # @param [String] content the content to parse
      # 
      # @return [String] html  
      def emojify(content)
        content.to_str.gsub(/:([a-z0-9\+\-_]+):/) do |match|
          RailsEmoji.render match, size: '20x20'
        end
      end
  end
end
