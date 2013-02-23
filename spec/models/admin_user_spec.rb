require 'spec_helper'

describe AdminUser do
  it "saving AdminUser should increase count by 1" do
    count = AdminUser.count
    FactoryGirl.create(:admin_user)
    AdminUser.count.should eq(count + 1)
  end
end
