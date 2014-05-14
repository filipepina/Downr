module Downr
  # This class wraps both pygmentize and
  # RailsEmoji gems to create a custom renderer
  class Render < Redcarpet::Render::HTML

    # Initializes the Render object
    # 
    # @option opts [Boolean] :pygmentize Code colors
    # @option opts [Boolean] :emojify Icons
    def initializer(opt)
      opt = clean_options
      @options = opt
    end

    # Hook for Redcarpet render 
    # 
    # @param [String] code the code snippet to parse
    # @param [String] language the coding language
    # 
    # @return [String] html
    def block_code(code, language)
      if(@options.pygmentize)
        pygmentize(code, language)
      else
        return code
      end
    end

    # Hook for Redcarpet render 
    # 
    # @param [String] text the p block
    # 
    # @return [String] html
    def paragraph(text)
      if(@options.emojify)
        return emojify(text)
      else
        return text
      end
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

        if(opts.has_key?(pygmentize))
          a[:pygmentize] = opts.pygmentize
        else
          a[:pygmentize] = false
        end

        if(opts.has_key?(emojify))
          a[:emojify] = opts.emojify
        else
          a[:emojify] = false
        end
        
        return opts
      end

      # Uses RailsEmoji to insert icons
      # 
      # @private
      # 
      # @param [String] content the string to parse
      # 
      # @return [String] with icons
      def emojify(content)
        content.to_str.gsub(/:([a-z0-9\+\-_]+):/) do |match|
          RailsEmoji.render match, size: '20x20'
        end.html_safe if content.present?
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
  end
end