require 'rails_helper'

module BootstrapLeather
  RSpec.describe NavigationHelper, folder: :helpers do
    describe '#nav_item' do
      subject { helper.nav_item 'Link Text', 'http://example.com' }
      it { should have_tag 'li' }
      it do
        should have_tag(
                 'a',
                 with: { href: 'http://example.com' },
                 text: /Link Text/
               )
      end
    end

    describe '#nav_heading' do
      subject { helper.nav_heading 'Heading Text' }
      it do
        should have_tag(
                 :li,
                 with: { class: 'dropdown-header' },
                 text: /Heading Text/
               )
      end
    end

    describe '#nav_list' do
      subject do
        helper.nav_list do
          %(<li>List Item</li>)
        end
      end
      it do
        should have_tag(
                 :ul,
                 with: { class: 'nav' },
                 text: /List Item/
               )
      end
    end

    describe '#navbar' do
      subject do
        helper.navbar { 'Contents' }
      end
      it do
        should have_tag 'nav', with: { class: 'navbar' }
      end
    end

    describe '#navbar_with_container' do
      subject do
        helper.navbar_with_container { 'Contents' }
      end
      it 'puts the container in a navbar' do
        expect(subject).to(
          have_tag('nav', with: { class: 'navbar' }) do
            with_tag 'div', with: { class: 'container' }
          end
        )
      end
    end

    describe '#navbar_in_container' do
      subject do
        helper.navbar_in_container { 'Contents' }
      end
      it 'puts the navbar in a container' do
        expect(subject).to(
          have_tag('div', with: { class: 'container' }) do
            with_tag 'nav', with: { class: 'navbar' }
          end
        )
      end
    end

    describe '#dropdown_nav_item' do
      subject do
        helper.dropdown_nav_item 'Heading', '#' do
          helper.nav_list do
            helper.nav_item 'Link', 'http://example.com'
          end
        end
      end
      it 'shows a dropdown item' do
        expect(subject).to(
          have_tag('li', with: { class: 'dropdown' }) do
            with_tag(
              'a',
              with: { class: 'dropdown-toggle', href: '#' },
              text: /Heading/
            )
            with_tag 'ul', with: { class: 'dropdown-menu' } do
              with_tag 'li' do
                with_tag 'a', with: { href: 'http://example.com' }, text: /Link/
              end
            end
          end
        )
      end
    end

    describe '#logo_and_title' do
      subject { helper.logo_and_title }
      it { should have_tag 'img', with: { src: '/assets/logo.svg' } }
      it { should match /Dummy Site/ }
    end
  end
end