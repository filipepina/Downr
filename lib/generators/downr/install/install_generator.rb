module Downr 

  # Generator for rails projects
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../templates', __FILE__)
  
    # Copies the default config
    #
    # @example Install
    #   rails g downr:install
    def copy_files
      copy_file 'downr.rb', 'config/initializers/downr.rb'
    end
  end
end
