require_relative '../../test_helper'

describe Downr::Configuration do 
  subject { Downr::Configuration }

  describe "configuration" do
    it "must have options" do
      Downr.configuration.options.wont_be_nil
    end
  end
end