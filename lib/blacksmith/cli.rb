require 'thor'
module Blacksmith
  class Cli < Thor
  end
end

require 'blacksmith/cli/init'
require 'blacksmith/cli/build'
require 'blacksmith/cli/watch'
