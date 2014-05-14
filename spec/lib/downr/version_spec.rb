require 'spec_helper'

describe Downr do  
  it "must have a version" do
    Downr::VERSION.should be_a_kind_of(String)
  end
end
