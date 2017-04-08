require 'rails_helper'

module BootstrapLeather
  RSpec.describe BadgesHelper, folder: :helpers do
    describe '#badge' do
      describe 'with nil' do
        subject { helper.badge nil }
        it { should eq '' }
      end
      describe 'with a number' do
        subject { helper.badge 1 }
        it { should have_tag 'span', with: { class: 'badge' }, text: /1/ }
      end
      describe 'with a string' do
        subject { helper.badge '1' }
        it { should have_tag 'span', with: { class: 'badge' }, text: /1/ }
      end
      describe 'with a type' do
        subject { helper.badge '1', 'success' }
        it do
          should have_tag 'span', with: { class: 'badge-success' }, text: /1/
        end
      end
    end

    describe '#badge_to' do
      subject do
        helper.badge_to 'Link Text', 99, 'http://example.com', class: 'example'
      end
      it do
        should have_tag(
                 'a',
                 class: 'example',
                 href: 'http://example.com',
                 text: /Link Text/
               )
      end
      it { should have_tag 'span', with: { class: 'badge' }, text: /99/ }
    end
  end
end