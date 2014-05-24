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
        pygmentize(code, language)
      end

      code
    end

    # Hoock for Redcarpet render
    #
    # @param [String] head the heading text
    # @param [int] level the heading level
    #
    # @return [String] html
    def header(head, level)
      handle_emoji(head, level)
    end

    # Hoock for Redcarpet render
    #
    # @param [String] text the paragraph text
    #
    # @return [String] html
    def paragraph(text)
      handle_emoji(text)
    end

    # Hoock for Redcarpet render
    #
    # @param [String] content the content of the list
    # @param [String] list_type the type of list
    #
    # @return [String] html
    def list(contents,  list_type)
      handle_emoji(contents)
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

      # wrapper for Emojifyer so we do keep 
      # checking options everywhere
      #
      # @param [String] text the text to emojify
      # @param [int] level the level/size to render the image default to 5 
      #
      # @return [String] html
      def handle_emoji(text, level=5)
        if(@options[:emojify])
          return Emojifyer.emojify(text, level)
        end
      
        text
      end
  end
end
