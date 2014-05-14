require 'spec_helper'

describe Downr do
  it { should respond_to(:configure) }
  it { should respond_to(:markdown) }
  it { should respond_to(:configuration) }
end
