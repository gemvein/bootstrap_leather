module BootstrapLeather
  class Railtie < Rails::Railtie
    initializer 'bootstrap_leather.add_view_paths', :after => :add_view_paths do |app|
      ActiveSupport.on_load(:action_controller) do
        prepend_view_path app.root.join('/app/views/bootstrap_leather').to_s
      end
    end
  end
end