require 'rails_helper'

module BootstrapLeather
  RSpec.describe WidgetsHelper, folder: :helpers do
    helper GridHelper
    describe '#add_widget and #render_widgets' do
      before do
        helper.add_widget do
          Faker::Lorem.paragraph
        end
      end
      subject { helper.render_widgets('md', 3) }
      it 'shows the tab links' do
        expect(subject).to(have_tag(:div, with: { class: 'col-md-3' }))
      end
    end
  end
end