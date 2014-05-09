require_relative '../../test_helper'

describe MarkdownHelper::Render do 
  subject { MarkdownHelper::Render }

  describe "functions" do
    before do
      @a = MarkdownHelper::Render.new
    end
    
    it "must have block_code" do
      @a.must_respond_to(:block_code)
    end

    it "must have paragrah" do
      @a.must_respond_to(:paragraph)
    end
  end
end