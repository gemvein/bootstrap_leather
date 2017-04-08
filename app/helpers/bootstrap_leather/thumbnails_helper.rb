# frozen_string_literal: true

module BootstrapLeather
  # Thumbnails and other images can have a consistent frame.
  module ThumbnailsHelper
    def thumbnail(content = '', &block)
      render(
        partial: 'bootstrap_leather/thumbnails/thumbnail',
        locals: { content: content ? content : capture(&block) }
      )
    end
  end
end
