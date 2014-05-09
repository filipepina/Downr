require_relative '../../test_helper'

describe Downr::Markdown do 
  subject { Downr::Markdown }

  describe "Object itself" do
    it "must be initialized" do
      a = Downr::Markdown.new
      a.wont_be_nil
    end
  end

  describe "render" do

    it "must have a render" do
      subject.must_respond_to(:render)
    end

    it "must render markdown" do
      a = Downr::Markdown.render("# hello")
      assert_equal "<h1>hello</h1>\n", a
    end
  end
end