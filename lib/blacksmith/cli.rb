require 'thor'
module Blacksmith
  class Cli < Thor
    def self.source_root
      File.dirname(__FILE__)
    end
    def self.pwd
      Dir.pwd
    end
  end
end

require 'blacksmith/cli/init'
require 'blacksmith/cli/build'
require 'blacksmith/cli/watch'
