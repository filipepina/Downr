module Downr

  ##
  # Container object for options
  # parsed by initializer
  class Configuration
    @@options

    attr_accessor :options

    def initialize
      @@options = {}
    end
  end
end
