# frozen_string_literal: true

module BootstrapLeather
  # Widgets (my term, not bootstrap's), such as a right sidebar with separate
  # sections
  module WidgetsHelper
    def add_widget(html_options = {}, &block)
      @widgets ||= []
      @widgets << { html_options: html_options, body: capture(&block) }
    end

    def widgets
      mine = @widgets
      @widgets = nil
      mine
    end

    def render_widgets(device_class = 'md', column_width = 3)
      render(
        partial: 'bootstrap_leather/widgets',
        locals: {
          widgets: widgets,
          column_width: column_width,
          device_class: device_class
        }
      )
    end
  end
end
