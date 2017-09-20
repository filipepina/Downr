require 'spec_helper'
require 'downr/version'

describe Downr do  
  it "must have a version" do
    Downr::VERSION.should be_a_kind_of(String)
  end
end
