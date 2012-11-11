require "rubygems"
require "json"
require "yaml"
require "faraday"

module BitPayRuby
  class << self
    attr_accessor :config, :connection
  end

  class BitPayRubyError < StandardError
  end
end

BitPayRuby::config = YAML.load_file(File.dirname(__FILE__) + "/../config/bitpay-ruby.yml")

BitPayRuby::connection = Faraday.new :url => BitPayRuby::config["api_endpoint"]
BitPayRuby::connection.basic_auth BitPayRuby::config["api_key"], ""

require File.join File.dirname(__FILE__), "bitpay-ruby", "version"
require File.join File.dirname(__FILE__), "bitpay-ruby", "logging"

require File.join File.dirname(__FILE__), "bitpay-ruby", "invoice"
