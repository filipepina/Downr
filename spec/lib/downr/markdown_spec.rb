require 'spec_helper'

describe Downr::Markdown do 
  before(:each) do
    Downr.configuration.stub(:options).and_return({})
    Downr::Render.any_instance.stub(:new).and_return(Object)
    Redcarpet::Markdown.any_instance.stub(:new).and_return(Object)
  end

  it { should respond_to(:renderer) }

  context "creating" do
    context "when configuration options are specified" do
      it "uses those options" do
        a = Downr::Markdown.new
        a.stub(:render).and_return("hello")
        a.render.should eq("hello")
      end
    end
  end
end
