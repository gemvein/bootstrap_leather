require 'rails_helper'

module BootstrapLeather
  RSpec.describe ThumbnailsHelper, folder: :helpers do
    describe '#thumbnail' do
      subject do
        helper.thumbnail image_tag '/assets/logo.svg'
      end
      it 'shows a thumbnail' do
        expect(subject).to(
          have_tag('ul', with: { class: 'thumbnails' }) do
            with_tag 'li', with: { class: 'thumbnail' } do
              with_tag 'img', with: { src: '/assets/logo.svg' }
            end
          end
        )
      end
    end
  end
end