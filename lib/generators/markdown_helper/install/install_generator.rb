module MarkdownHelper 
  class InstallGenerator < Rails::Generators::NameBase
    source_root File.expand_path('../../../templates', __FILE__)
  
    def copy_files
      copy_file 'markdown_helper.rb', 'config/initializers/markdown_helper.rb'
    end
  end
end