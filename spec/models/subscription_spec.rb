require 'spec_helper'

describe Subscription do

  describe "#can_send_message?" do

    before(:each) do
      @subscription = Subscription.new(:limit => 10)
      @zach = User.create! :subscription => @subscription
    end

    context "when a user has not reached the subscription limit for the month" do
      it "returns true" do
        @zach.sent_messages.stub(:count).and_return(9)
        @subscription.can_send_message?.should == true
      end
    end

    context "when a user has reached the subscription limit for the month" do
      it "returns false" do
        @zach.sent_messages.stub(:count).and_return(10)
        @subscription.can_send_message?.should == false
      end
    end

  end

end

