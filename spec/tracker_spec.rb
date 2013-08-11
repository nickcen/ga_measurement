require 'spec_helper'

module GaMeasurement
  describe Tracker do
    let :tracker do
      GaMeasurement::Tracker.new('UA-test')
    end

    it "should track event" do
      params = {
        :v => GaMeasurement::Tracker::VERSION,
        :tid => 'UA-test',
        :cid => '555',
        :t => "event",
        :ec => 'crawler',
        :ea => 'startup',
        :el => 'ctquan',
        :ev => 1
      }

      RestClient.should_receive(:get).with(GaMeasurement::Tracker::END_POINT, params: params, timeout: 4, open_timeout: 4).and_return(true)

      tracker.event('crawler', 'startup', 'ctquan', 1).should == true
    end
  end
end