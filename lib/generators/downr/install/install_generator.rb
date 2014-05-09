module Downr 
  class InstallGenerator < Rails::Generators::NameBase
    source_root File.expand_path('../../../templates', __FILE__)
  
    def copy_files
      copy_file 'downr.rb', 'config/initializers/downr.rb'
    end
  end
end