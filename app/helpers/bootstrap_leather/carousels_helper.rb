# frozen_string_literal: true

module BootstrapLeather
  # Carousels, i.e. slideshows
  module CarouselsHelper
    def carousel(id, items, html_options = {}, &block)
      html_options[:id] = id
      html_options[:data] ||= {}
      html_options[:data][:ride] = 'carousel'
      render(
        partial: 'bootstrap_leather/carousel',
        locals: {
          id: id, html_options: html_options,
          slides: items.collect { |item| capture(item, &block) }
        }
      )
    end

    def carousel_with_thumbnails(id, items, html_options = {}, &block)
      html_options[:id] = id
      html_options[:data] ||= {}
      html_options[:data][:ride] = 'carousel'
      render(
        partial: 'bootstrap_leather/carousel_with_thumbnails',
        locals: {
          id: id, html_options: html_options,
          slides: items.collect { |item| capture(item, &block) }
        }
      )
    end
  end
end
