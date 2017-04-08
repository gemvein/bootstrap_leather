# frozen_string_literal: true

module BootstrapLeather
  # Some documentation goes here
  class Engine < ::Rails::Engine
    isolate_namespace BootstrapLeather
    config.app_generators do |g|
      g.templates.unshift BootstrapLeather::Engine.root.join('lib/templates')
    end
    config.generators do |g|
      g.templates.unshift BootstrapLeather::Engine.root.join('lib/templates')
      g.hidden_namespaces << :test_unit << :mongoid
      g.orm             :active_record
      g.template_engine :haml
      g.test_framework  :rspec, fixture: false
      g.stylesheets     false
      g.javascripts     false
    end
  end
end
