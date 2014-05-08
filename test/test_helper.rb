require 'minitest/autorun'
require 'minitest/pride'

def setup
  MarkdownHelper.configure
end

require File.expand_path('../../lib/markdown_helper.rb', __FILE__)