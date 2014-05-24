require 'spec_helper'

describe Downr::Render do 
  before(:each) do
    Downr::Render.any_instance.stub(:initialize).and_return(Downr::Render.new({}))
  end
  it{ should respond_to(:block_code) }
  it{ should respond_to(:postprocess) }
end
