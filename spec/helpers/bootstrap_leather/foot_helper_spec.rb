require 'rails_helper'

module BootstrapLeather
  RSpec.describe FootHelper, folder: :helpers do
    describe '#add_footer_javascript' do
      before do
        helper.add_footer_javascript { 'foo' }
      end
      subject { helper.content_for(:footer_javascript) }
      it { should eq 'foo' }
    end
    describe '#render_footer_javascript' do
      before do
        helper.content_for(:footer_javascript) { 'bar' }
      end
      subject { helper.render_footer_javascript }
      it { should match /bar/ }
    end
  end
end