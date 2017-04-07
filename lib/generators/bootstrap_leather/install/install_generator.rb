# frozen_string_literal: true

module BootstrapLeather
  # The methods in this class will be run in order
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    require File.expand_path('../../utils', __FILE__)
    include Generators::Utils
    include Rails::Generators::Migration

    def add_initializer
      output "You'll be wanting an initializer.  This is where you put your "\
        'configuration options.', :magenta
      template 'initializer.rb', 'config/initializers/bootstrap_leather.rb'
    end

    # def self.next_migration_number(dirname)
    #   if ActiveRecord::Base.timestamped_migrations
    #     if @prev_migration_nr
    #       @prev_migration_nr += 1
    #     else
    #       @prev_migration_nr = Time.now.utc.strftime('%Y%m%d%H%M%S').to_i
    #     end
    #     @prev_migration_nr.to_s
    #   else
    #     (current_migration_number(dirname) + 1).format('%.3d')
    #   end
    # end
  end
end
