require_relative '../../test_helper'

describe MarkdownHelper::Render do 
  subject { MarkdownHelper::Render }

  describe "functions" do
    it "must have block_code" do
      subject.must_respond_to(:block_code)
    end

    it "must have paragrah" do
      subject.must_respond_to(:paragraph)
    end
  end
end