require 'rails_helper'

module BootstrapLeather
  RSpec.describe ModalsHelper, folder: :helpers do
    describe '#modal' do
      subject do
        helper.modal 'css-id', 'Title' do
          %(Contents Go Here)
        end
      end
      it { should have_tag 'div', with: { class: 'modal', id: 'css-id' } }
      it { should have_tag 'h3', with: { class: 'modal-title' }, text: 'Title'}
      it do
        should have_tag(
                 :div,
                 with: { class: 'modal-body' },
                 text: /Contents Go Here/
               )
      end
    end
  end
end