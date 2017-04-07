require 'rails_helper'

module BootstrapLeather
  RSpec.describe TypographyHelper, folder: :helpers do
    helper HeadHelper

    describe '#render_h1' do
      before do
        helper.add_title 'Title'
      end
      it 'shows the title' do
        expect(helper.render_h1).to(have_tag 'h1', text: /Title/)
      end
    end
    describe '#render_page_header' do
      before do
        helper.add_title 'Title'
        helper.add_subtitle 'Subtitle'
      end
      it 'shows the title and subtitle' do
        expect(helper.render_page_header).to(
          have_tag('div', with: { class: 'page-header' }) do
            with_tag 'h1', text: /Title/ do
              with_tag 'small', text: /Subtitle/
            end
          end
        )
      end
    end
    describe '#dl' do
      it 'shows a dl' do
        expect(helper.dl( { name: 'Name', body: 'Body' } )).to(
          have_tag('dl') do
            with_tag 'dt', text: /name/
            with_tag 'dd', text: /Name/
            with_tag 'dt', text: /body/
            with_tag 'dd', text: /Body/
          end
        )
      end
    end
  end
end