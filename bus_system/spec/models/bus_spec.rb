require 'spec_helper'

describe Bus do

  it { should have_many :stops }
  it { should belong_to :line }
  it { should have_many :stations }

end
