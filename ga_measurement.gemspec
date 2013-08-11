# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ga_measurement/version'

Gem::Specification.new do |spec|
  spec.name          = "ga_measurement"
  spec.version       = GaMeasurement::VERSION
  spec.authors       = ["nickcen"]
  spec.email         = ["cenyongh@gmail.com"]
  spec.description   = %q{this is a ruby implementation of google-analytic's Measurement Protocol}
  spec.summary       = %q{a ruby implementation of google-analytic's Measurement Protocol}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_runtime_dependency 'rest-client'
end
