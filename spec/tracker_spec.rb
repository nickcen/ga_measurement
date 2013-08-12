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
        :ec => 'book',
        :ea => 'it',
        :el => 'ruby',
        :ev => 1
      }

      RestClient.should_receive(:get).with(GaMeasurement::Tracker::END_POINT, params: params, timeout: 4, open_timeout: 4).and_return(true)

      tracker.event('book', 'it', 'ruby', 1).should == true
    end

    it "should track event" do
      params = {
        :v => GaMeasurement::Tracker::VERSION,
        :tid => 'UA-test',
        :cid => '555',
        :t => "pageview",
        :dh => 'mydemo.com',
        :dp => '/home',
        :dt => 'homepage'
      }

      RestClient.should_receive(:get).with(GaMeasurement::Tracker::END_POINT, params: params, timeout: 4, open_timeout: 4).and_return(true)

      tracker.page('/home', 'homepage', 'mydemo.com').should == true
    end
  end
end