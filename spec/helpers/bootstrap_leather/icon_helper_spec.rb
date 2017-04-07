require 'rails_helper'

module BootstrapLeather
  RSpec.describe IconsHelper, folder: :helpers do
    describe '#icon' do
      subject { helper.icon 'check' }
      it { should have_tag :span, with: { class: 'glyphicon-check' } }
    end

    describe '#icon_button_to' do
      subject do
        helper.icon_button_to(
          'success',
          'check',
          'Link Text',
          'http://example.com',
          class: 'example'
        )
      end
      it do
        should have_tag(
                 :a,
                 class: 'example',
                 href: 'http://example.com',
                 text: /Link Text/
               )
      end
      it { should have_tag :span, with: { class: 'glyphicon-check' } }
    end

    describe '#icon_link_to' do
      subject do
        helper.icon_link_to(
          'check', 'Link Text', 'http://example.com', class: 'example'
        )
      end
      it do
        should have_tag(
                 :a,
                 class: 'example',
                 href: 'http://example.com',
                 text: /Link Text/
               )
      end
      it { should have_tag :span, with: { class: 'glyphicon-check' } }
    end
  end
end