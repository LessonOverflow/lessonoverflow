require 'spec_helper'

describe Resource do
  before do
    @r1 = Resource.create!(:common_core => nil)
    @r2 = Resource.create!(:common_core => 'foo')
  end

  it "return tagged resources only" do
    response = Resource.tagged?
    response.first.should eql(@r2)
  end

end
