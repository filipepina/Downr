require_relative '../../test_helper'

describe MarkdownHelper::Markdown do 
  subject { MarkdownHelper::Markdown }

  before do
    MarkdownHelper.configure
  end
  describe "Object iteself" do
    it "must exist" do
      a = MarkdownHelper::Markdown.new
      a.wont_be_nil
    end
  end

  describe "render" do
    it "must render markdown" do
      a = MarkdownHelper::Markdown.render("# hello")
      assert_equal "<h1>hello</h1>\n", a
    end
  end
end