# frozen_string_literal: true

module BootstrapLeather
  # Helpers to add things to the head (and foot) of the html document
  module FootHelper
    def add_footer_javascript(&block)
      content_for :footer_javascript, &block
    end

    def render_footer_javascript
      render(partial: 'bootstrap_leather/foot/footer_javascript')
    end
  end
end
