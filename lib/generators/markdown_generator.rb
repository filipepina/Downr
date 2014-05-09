module MarkdownHelper 
  class InitializerGenerator < Rails::Generators::Base
    source_root(File.expand_path(File.dirname(__FILE__))
  
    def copy_initializer
      copy_file 'markdown_helper.rb', 'config/initializers/markdown_helper.rb'
    end
  end
end