module Downr 

  # Generator for rails projects to copy the default config file
  class InstallGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../../../templates', __FILE__)
  
    # Copies the default config
    #
    # @example Install
    #   rails g downr:install install
    def copy_files
      copy_file 'downr.rb', 'config/initializers/downr.rb'
    end
  end
end
