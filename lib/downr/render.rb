module Downr
  # This class wraps both pygmentize and
  # RailsEmoji gems to create a custom renderer
  class Render < Redcarpet::Render::HTML

    def initializer(opt)
      opt = clean_options
      @options = opt
    end

    def block_code(code, language)
      if(@options.pygmentize)
        pygmentize(code, language)
      else
        return code
      end
    end

    def paragraph(text)
      if(@options.emojify)
        return emojify(text)
      else
        return text
      end
    end

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

    private
      def emojify(content)
        content.to_str.gsub(/:([a-z0-9\+\-_]+):/) do |match|
          RailsEmoji.render match, size: '20x20'
        end.html_safe if content.present?
      end
      def pygmentize(code, language)
        language = language.nil? ? :sh : language
        Pygmentize.process(code, language)
      end
  end
end