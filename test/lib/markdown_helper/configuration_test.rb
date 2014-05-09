require_relative '../../test_helper'

describe MarkdownHelper::Configuration do 
  subject { MarkdownHelper::Configuration }

  describe "configuration" do
    it "must have options" do
      subject.options.wont_be_nil
    end
  end
end