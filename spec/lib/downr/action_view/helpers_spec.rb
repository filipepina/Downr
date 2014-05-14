require 'spec_helper'

describe Downr::Helpers do 
  class DummyClass
  end
  before(:all) do
    @dummy = DummyClass.new
    @dummy.extend Downr::Helpers
  end

  describe "helpers" do
    it "renders markdown" do 
      @dummy.should respond_to(:render_markdown)
    end
  end
 
end
