require 'spec_helper'

describe Line do

  it { should have_many :stops }
  it { should have_many :buses }
  it { should have_many :stations }

end
