require 'spec_helper'
describe Gisele::Language do

  it "should have a version number" do
    Gisele::Language.const_defined?(:VERSION).should be_true
  end

end
