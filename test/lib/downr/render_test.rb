require_relative '../../test_helper'

describe Downr::Render do 
  subject { Downr::Render }

  describe "functions" do
    before do
      @a = Downr::Render.new
    end
    
    it "must have block_code" do
      @a.must_respond_to(:block_code)
    end

    it "must have paragrah" do
      @a.must_respond_to(:paragraph)
    end
  end
end