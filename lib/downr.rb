require "downr/version"
require 'downr/render'
require 'downr/configuration'
require 'downr/markdown'

if defined?(::Rails)
  require 'downr/action_view/helpers'
  require 'downr/railtie' 
end

module Downr
  # Your code goes here...
  class << self
    attr_accessor :configuration, :markdown
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)

    self.markdown ||= Markdown.new
  end

end
