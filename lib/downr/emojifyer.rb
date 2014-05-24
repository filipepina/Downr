module Downr
  class Emojifyer
    
    XSMALL='20x20'
    SMALL='30x30'
    MEDIUM='40x40'
    LARGE='60x60'
    XLARGE='80x80'
    XXLARGE='100x100'

    # Uses RailsEmoji to insert icons
    # 
    # @private
    # 
    # @param [String] content the string to parse
    # 
    # @return [String] with icons
    def self.emojify(content, level=SMALL)
      case level
      when 1
        return emojify_size(content, XXLARGE)
      when 2
        return emojify_size(content, XLARGE)
      when 3
        return emojify_size(content, LARGE)
      when 4
        return emojify_size(content, MEDIUM)
      when 5
        return emojify_size(content, SMALL)
      when 6
        return emojify_size(content, XSMALL)
      end
    end

    private
    def emojify_size(content, size)
      content.to_str.gsub(/:([a-z0-9\+\-_]+):/) do |match|
        RailsEmoji.render match, size: size
      end
    end
  end
end
