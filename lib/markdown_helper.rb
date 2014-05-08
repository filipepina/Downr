require "markdown_helper/version"
require 'markdown_helper/action_view/helpers'
require 'markdown_helper/railtie' if defined?(::Rails)

module MarkdownHelper
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
