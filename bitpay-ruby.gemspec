# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bitpay-ruby/version"

Gem::Specification.new do |s|
  s.name        = "bitpay-ruby"
  s.version     = BitPayRuby::VERSION
  s.authors     = ["Martin Harrigan"]
  s.email       = ["martinharrigan@gmail.com"]
  s.homepage    = "http://www.martinharrigan.ie"
  s.summary     = %q{A library for interacting with the BitPay.com Bitcoin Payment Gateway API.}
  s.description = %q{A library for interacting with the BitPay.com Bitcoin Payment Gateway API.}

  s.rubyforge_project = "bitpay-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["config", "lib"]

  s.add_runtime_dependency "log4r", "~> 1.1.10"
  s.add_runtime_dependency "faraday", "~> 0.8.4"
  s.add_runtime_dependency "sinatra", "~> 1.3.3"
  s.add_runtime_dependency "webrick", "~> 1.3.1"
  s.add_development_dependency "rake", "~> 10.0.0"
end
