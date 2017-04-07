# frozen_string_literal: true

module BootstrapLeather
  # Typography
  module TypographyHelper
    def definition_list(list, html_options = {})
      render(
        partial: 'bootstrap_leather/definition_list',
        locals: {
          list: list,
          html_options: html_options
        }
      )
    end
    alias dl definition_list
  end
end
