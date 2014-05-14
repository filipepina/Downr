require 'pygmentize'
require 'redcarpet'

require "downr/version"
require 'downr/render'
require 'downr/configuration'
require 'downr/markdown'

# Don't include the view helpers if not
# being used with rails
if defined?(::Rails)
  require 'downr/action_view/helpers'
  require 'downr/railtie' 
end

# Namespace for classes and modules that handle markdown parsing
module Downr

  # @attr [Configuration] configuration the configuration used for initializing the parser
  # @attr [Markdown] markdown the markdown object created from the configuration
  class << self
    attr_accessor :configuration, :markdown
  end

  # static method to define a Configuration
  # object with the given initialized data
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)

    self.markdown ||= Markdown.new
  end

end
