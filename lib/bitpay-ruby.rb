require "rubygems"
require "json"
require "yaml"
require "faraday"

module BitPayRuby
  class BitPayRubyError < StandardError
  end

  class << self
    attr_accessor :config

    @@connection = nil

    def connection
      if @@connection.nil?
        @@connection = Faraday.new :url => config["api_endpoint"]
        @@connection.basic_auth config["api_key"], ""
      end
      @@connection
    end
  end
end

require File.join File.dirname(__FILE__), "bitpay-ruby", "version"
require File.join File.dirname(__FILE__), "bitpay-ruby", "logging"

require File.join File.dirname(__FILE__), "bitpay-ruby", "invoice"
