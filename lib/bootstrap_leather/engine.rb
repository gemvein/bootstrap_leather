# frozen_string_literal: true

module BootstrapLeather
  # Bootstrap Leather Engine
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      # Use bootstrap leather for scaffolds
      g.templates.unshift BootstrapLeather::Engine.root.join('lib/templates')
    end
    config.generators do |g|
      g.hidden_namespaces << :test_unit << :mongoid
      g.orm             :active_record
      g.template_engine :haml
      g.test_framework  :rspec, fixture: false
      g.stylesheets     false
      g.javascripts     false
    end
  end
end
