require 'spec_helper'

describe Downr::Render do 
  it{ should respond_to(:block_code) }
  it{ should respond_to(:paragraph) }
end
