require 'rails_helper'

module BootstrapLeather
  RSpec.describe HeadHelper, folder: :helpers do
    describe '#responsive_meta_tag' do
      subject { helper.responsive_meta_tag }
      it { should have_tag 'meta', with: { name: 'viewport' } }
    end
    describe '#add_title' do
      before do
        helper.add_title 'Title'
      end
      subject { helper.content_for(:title) }
      it { should eq 'Title' }
    end
    describe '#add_subtitle' do
      before do
        helper.add_subtitle 'Subtitle'
      end
      subject { helper.content_for(:subtitle) }
      it { should eq 'Subtitle' }
    end
    describe '#render_title' do
      before do
        helper.content_for(:title) { 'Title' }
        helper.content_for(:subtitle) { 'Subtitle' }
      end
      subject { helper.render_title }
      it { should have_tag 'title', text:  'Title: Subtitle: Dummy Site' }
    end
    describe '#add_description' do
      before do
        helper.add_description 'Description'
      end
      subject { helper.content_for(:description) }
      it { should eq 'Description' }
    end
    describe '#render_description' do
      before do
        helper.content_for(:description) { 'Description' }
      end
      subject { helper.render_description }
      it do
        should have_tag 'meta', with: {
          name: 'description', content: 'Description'
        }
      end
    end
    describe '#add_keywords' do
      before do
        helper.add_keywords 'Keywords'
      end
      subject { helper.content_for(:keywords) }
      it { should eq 'Keywords' }
    end
    describe '#render_keywords' do
      before do
        helper.content_for(:keywords) { 'Keywords' }
      end
      subject { helper.render_keywords }
      it do
        should have_tag 'meta', with: {
          name: 'keywords', content: 'Keywords'
        }
      end
    end
    describe '#add_head_css' do
      before do
        helper.add_head_css { 'foo' }
      end
      subject { helper.content_for(:head_css) }
      it { should eq 'foo' }
    end
    describe '#render_head_css' do
      before do
        helper.content_for(:head_css) { 'bar' }
      end
      subject { helper.render_head_css }
      it { should match /bar/ }
    end
  end
end