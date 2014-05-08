module MarkdownHelper

  class Configuration
    @@options

    attr_accessor :options

    def initialize
      @@options = {}
    end
  end
end