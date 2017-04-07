# frozen_string_literal: true

module BootstrapLeather
  # Tabs, like the tabs of a folder
  module TabsHelper
    def add_tab(label, id, args = {}, &block)
      active = false
      if @tabs.nil?
        @tabs = []
        active = true
      end
      before_link = args[:before_link] ? args[:before_link] : ''
      @tabs << {
        id: id, label: label, active: active, before_link: before_link,
        content: capture(&block)
      }
    end

    def render_tabs(orientation = 'top')
      html = render(
        partial: 'bootstrap_leather/tabs/tabs',
        locals: { tabs: @tabs, orientation: orientation }
      )
      @tabs = nil
      html.html_safe
    end
  end
end
