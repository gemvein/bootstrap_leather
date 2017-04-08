require 'rails_helper'

module BootstrapLeather
  RSpec.describe TabsHelper, folder: :helpers do
    describe '#add_tab and #render_tabs' do
      before do
        helper.add_tab 'Foo', 'foo' do
          Faker::Lorem.paragraph
        end
        helper.add_tab 'Bar', 'bar' do
          Faker::Lorem.paragraph
        end
      end
      subject { helper.render_tabs }
      it 'shows the tab links' do
        expect(subject).to(
          have_tag('div', with: { class: 'tabs-top' }) do
            with_tag 'ul', with: { class: 'nav-tabs' } do
              with_tag 'li' do
                with_tag 'a', text: /Foo/
              end
              with_tag 'li' do
                with_tag 'a', text: /Bar/
              end
            end
          end
        )
      end
      it 'shows the tabs' do
        expect(subject).to(
          have_tag('div', with: { class: 'tab-content' }) do
            with_tag 'div', with: { id: 'foo' }
            with_tag 'div', with: { id: 'bar' }
          end
        )
      end
    end
  end
end