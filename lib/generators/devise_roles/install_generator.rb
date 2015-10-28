#lib/generators/gemname/install_generator.rb
require 'rails/generators'
module DeviseRoles
  class InstallGenerator < Rails::Generators::Base
    desc "DeviseRoles generator performing tasks"

    # Commandline options can be defined here using Thor-like options:
    # class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"
    # I can later access that option using:
    # options[:my_opt]


    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    # Generator Code. Remember this is just suped-up Thor so methods are executed in order
    def copy_initializer_file
      copy_file "devise_roles_initializer.rb", "config/initializers/#{file_name}.rb"
    end

  end
end
