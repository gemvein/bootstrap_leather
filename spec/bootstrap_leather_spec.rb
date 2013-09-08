require 'spec_helper'

describe BootstrapLeather do
  it 'should return correct version string' do
    BootstrapLeather.version_string.should == "BootstrapLeather version #{BootstrapLeather::VERSION}"
  end
end