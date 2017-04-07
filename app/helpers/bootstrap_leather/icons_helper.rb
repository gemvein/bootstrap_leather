# frozen_string_literal: true

module BootstrapLeather
  # Icons, i.e. tiny images from fonts
  module IconsHelper
    def icon_link_to(icon_type, text, link, html_options = {})
      render(
        partial: 'bootstrap_leather/icon_link_to',
        locals: {
          icon_type: icon_type,
          text: text,
          link: link,
          html_options: html_options
        }
      )
    end

    def icon_button_to(button_class, icon_type, text, link, html_options = {})
      html_options[:class] = 'btn btn-' + button_class
      render(
        partial: 'bootstrap_leather/icon_button_to',
        locals: {
          button_class: button_class, icon_type: icon_type, text: text,
          link: link, html_options: html_options
        }
      )
    end

    def icon(type)
      render(partial: 'bootstrap_leather/icon', locals: { type: type })
    end
  end
end
