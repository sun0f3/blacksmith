require 'blacksmith/cli'
require 'blacksmith/configure'
require 'blacksmith/application'
require 'blacksmith/preprocessor'

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

