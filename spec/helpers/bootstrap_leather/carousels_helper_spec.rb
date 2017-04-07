require 'rails_helper'

module BootstrapLeather
  RSpec.describe CarouselsHelper, folder: :helpers do
    helper IconsHelper
    helper FootHelper

    describe '#carousel' do
      subject do
        helper.carousel 'css-id-for-carousel', DooDad.all do |item|
          %(
<div class='carousel-caption'><h4>#{item.name}</h4></div>
<p>#{item.body}</p>
).html_safe
        end
      end
      it do
        should have_tag :div, with: {
          class: 'carousel', id: 'css-id-for-carousel'
        }
      end
      it { should have_tag :div, with: { class: 'item' }, count: 5}
    end

    describe '#carousel_with_thumbnails' do
    end
  end
end