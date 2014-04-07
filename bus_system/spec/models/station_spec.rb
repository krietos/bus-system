require 'spec_helper'

describe Station do

  it { should have_many :stops }
  it { should have_many :lines }
  it { should have_many :buses }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :name }

end
