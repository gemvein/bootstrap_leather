require 'rails_helper'

module BootstrapLeather
  RSpec.describe ThumbnailsHelper, folder: :helpers do
    describe '#thumbnail' do
      subject do
        helper.thumbnail do
          image_tag '/assets/logo.svg'
        end
      end
      it do
        should have_tag :ul, with: { class: 'thumbnails' } do
          with_tag :li, with: { class: 'thumbnail' } do
            with_tag :img, with: { src: '/assets/logo.svg' }
          end
        end
      end
    end
  end
end