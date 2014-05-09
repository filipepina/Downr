module MarkdownHelper 
  class InitializerGenerator < Rails::Generators::NameBase
    source_root(File.expand_path(File.dirname(__FILE__))
  
    def copy_initializer_file
      copy_file 'markdown_helper.rb', 'config/initializers/markdown_helper.rb'
    end
  end
end