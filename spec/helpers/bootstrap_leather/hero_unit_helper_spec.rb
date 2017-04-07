require 'rails_helper'

module BootstrapLeather
  RSpec.describe HeroUnitHelper, folder: :helpers do
    describe '#add_hero_unit' do
      before do
        helper.add_hero_unit { 'Yay!' }
      end
      subject { helper.content_for(:hero_unit) }
      it { should eq 'Yay!' }
    end
    describe '#render_hero_unit' do
      before do
        helper.content_for(:hero_unit) { 'Yay!' }
      end
      subject { helper.render_hero_unit }
      it { should have_tag :div, with: { class: 'jumbotron' }, text: /Yay!/ }
    end
  end
end