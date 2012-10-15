module Blacksmith
  def self.hello
    'hello world'
  end

  class << self
    def configure
      @config = Blacksmith::Configure.new
    end
  end
end

require 'blacksmith/cli'
