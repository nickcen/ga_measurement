# GaMeasurement

This is a ruby implementation of google-analytic's Measurement Protocol.

## Installation

Add this line to your application's Gemfile:

    gem 'ga_measurement'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ga_measurement

## Usage

    GaMeasurement::Tracker.new('UA-test')
    tracker.page('/home', 'homepage', 'mydemo.com')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
