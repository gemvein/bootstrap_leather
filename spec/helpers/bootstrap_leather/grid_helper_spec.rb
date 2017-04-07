require 'rails_helper'

module BootstrapLeather
  RSpec.describe GridHelper, folder: :helpers do
    describe '#column_class' do
      subject { helper.column_class 'md', 3 }
      it { should eq 'col-md-3' }
    end
  end
end