require 'rails_helper'

module BootstrapLeather
  RSpec.describe CarouselsHelper, folder: :helpers do
    helper IconsHelper
    helper HeadHelper
    helper FootHelper

    describe '#carousel' do
      subject do
        helper.carousel 'css-id', DooDad.all do |item|
          %(
<div class='carousel-caption'><h4>#{item.name}</h4></div>
<p>#{item.body}</p>
).html_safe
        end
      end
      it do
        should have_tag :div, with: {
          class: 'carousel', id: 'css-id'
        }
      end
      it { should have_tag :div, with: { class: 'item' }, count: 5}
    end

    describe '#carousel_with_thumbnails' do
      subject do
        helper.carousel_with_thumbnails 'css-id', DooDad.all do |item|
          %(
<div class='carousel-caption'><h4>#{item.name}</h4></div>
<p>#{item.body}</p>
#{image_tag 'src.png', data: { thumbnail: 'thumb.png' }}
).html_safe
        end
      end
      it do
        should have_tag :div, with: {
          class: 'carousel-with-thumbnails', id: 'css-id'
        }
      end
      it { should have_tag :div, with: { class: 'item' }, count: 5}
    end
  end
end