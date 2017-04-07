# frozen_string_literal: true

module BootstrapLeather
  # Modals, i.e. content box that pops up over main document, shading out the
  # background
  module ModalsHelper
    def modal(id, title = '', close_text = 'Close', html_options = {}, &block)
      render(
        partial: 'bootstrap_leather/modal',
        locals: {
          id: id,
          close_text: close_text,
          title: title,
          block: capture(&block),
          html_options: html_options
        }
      )
    end
  end
end
