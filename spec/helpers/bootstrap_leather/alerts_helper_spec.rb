require 'rails_helper'

module BootstrapLeather
  RSpec.describe AlertsHelper, folder: :helpers do
    describe '#flash_class' do
      describe 'with :notice' do
        subject { helper.flash_class(:notice) }
        it { should eq 'info' }
      end
      describe 'with :error' do
        subject { helper.flash_class(:error) }
        it { should eq 'danger' }
      end
      describe 'with :alert' do
        subject { helper.flash_class(:alert) }
        it { should eq 'warning' }
      end
    end

    describe '#alert' do
      subject { helper.alert 'danger', 'This is the title', 'This is the text' }
      it do
        should have_tag(:div, class: 'alert-danger')
      end
      it do
        should have_tag(:h4, class: 'alert-heading', text: 'This is the title')
      end
      it do
        should have_tag(:p, text: 'This is the text')
      end
      it do
        should have_tag(:button, class: 'close')
      end
    end

    describe '#alert_flash_messages' do
      before do
        [:notice, :error, :alert].each do |level|
          @request.flash[level] = "This is the #{level}"
        end
      end
      subject { helper.alert_flash_messages }
      it do
        should have_tag :div, class: 'alert-danger', text: 'This is the error'
      end
      it do
        should have_tag :div, class: 'alert-info', text: 'This is the notice'
      end
      it do
        should have_tag :div, class: 'alert-warning', text: 'This is the alert'
      end
    end
  end
end