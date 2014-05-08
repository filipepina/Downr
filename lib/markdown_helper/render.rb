require 'pygmentize'
require 'redcarpet'

module MarkdownHelper
  # This class wraps both pygmentize and
  # RailsEmoji gems to create a custom renderer
  class HTMLRender < Redcarpet::Render::HTML
    def block_code(code, language)
      pygmentiz(code, language)
    end

    def paragraph(text)
      emojify(text)
    end

    private
      def emojify(content)
        content.to_str.gsub(/:([a-z0-9\+\-_]+):/) do |match|
          RailsEmoji.render match, size: '20x20'
        end.html_safe if content.present?
      end
      def pygmentiz(code, language)
        language = language.nil? ? :sh : language
        Pygmentize.process(code, language)
      end
  end
end