require "log4r"
require "log4r/yamlconfigurator"

Log4r::YamlConfigurator.decode_yaml YAML.load_file(File.dirname(__FILE__) + "/../../config/log4r.yml")

module BitPayRuby
  module Logging
    class << self
      def included base
        @logger = Log4r::Logger[base.name] || Log4r::Logger["default"]
      end

      def logger
        @logger
      end
    end

    def logger
      Logging.logger
    end
  end
end
