require 'rails/generators/active_record'
require 'pp'

module Konfigure
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base
      desc "Confiure to RH specs"
      argument :name, type: :string, default: "konfigure"

      def self.source_root
        @_konfigure_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def copy_initializer
        @underscored_user_name = name.underscore
        template 'Konfiguration_initializer.rb.erb', 'config/initializers/_konfigure.rb'

        if File.exists?(File.expand_path(Rails.root + "config/#{name}.yml"))
          developer_env = ENV['DEVELOPER']
          if ask("Add environment block for \"#{developer_env}\" to the config? [y/n]") == "y"
            file = "config/#{name}.yml"
            inject_into_file file, "\n#{developer_env}:\n\t<<: *defaults\n\n",  :before => "development:"
          end

        else
          template 'Konfiguration_yml.yml.erb', "config/#{name}.yml"
        end
      end

    end
  end
end



