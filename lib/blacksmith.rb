require 'blacksmith/cli'
require 'blacksmith/configure'

module Blacksmith

  class << self
    def config
      @config ||= Blacksmith::Configure.new
    end

    def app
      @app ||= Blacksmith::Application.new
    end
  end
end

