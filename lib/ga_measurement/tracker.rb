require 'rest_client'

module GaMeasurement
  class Tracker
    VERSION = '1'
    END_POINT = 'http://www.google-analytics.com/collect'
                 
    def initialize(tracking_id)
      @tracking_id = tracking_id
    end

    def event(category, action, label = '', value = '', cid = '555')
      params = {
        :v => GaMeasurement::Tracker::VERSION,
        :tid => @tracking_id,
        :cid => cid,
        :t => "event",
        :ec => category,
        :ea => action,
        :el => label,
        :ev => value
      }

      begin
        RestClient.get(GaMeasurement::Tracker::END_POINT, params: params, timeout: 4, open_timeout: 4)
        return true
      rescue  RestClient::Exception => rex
        return false
      end
    end
  end
end


