require 'spec_helper'

describe Downr::Markdown do 
  before(:each) do
    Downr.configuration.stub(:options).and_return({})
    Downr::Render.any_instance.stub(:new).and_return(Object)
    Redcarpet::Markdown.any_instance.stub(:new).and_return(Object)
  end

  it { should respond_to(:renderer) }

  it "should have a render method" do
    Downr::Markdown.should respond_to(:render)
  end
end