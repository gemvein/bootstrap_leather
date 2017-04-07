# frozen_string_literal: true

module BootstrapLeather
  # Badges, i.e. tiny counts in a pill
  module BadgesHelper
    def badge_to(text, value, link, html_options = {})
      html_options[:href] = url_for link
      render(
        partial: 'bootstrap_leather/badges/badge_to',
        locals: { text: text, value: value, html_options: html_options }
      )
    end

    def badge(content, type = nil)
      render(
        partial: 'bootstrap_leather/badges/badge',
        locals: { content: content, type: type }
      )
    end
  end
end
