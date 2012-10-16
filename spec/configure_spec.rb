require File.expand_path('../../lib/blacksmith/configure.rb', __FILE__)
require 'sourcify'
require 'tempfile'

describe Blacksmith::Configure do
  it 'set' do

    Dir.stub!(:pwd) { File.dirname(File.expand_path('tmp', __FILE__))}
    f = create_tempfile_with_block do
      set :qwe, 'qwe'
    end
    config = Blacksmith::Configure.new
  end


  def create_tempfile_with_block(&block)
    f = File.new(File.expand_path('../tmp/config.rb', __FILE__), 'w')
    f.write block.to_source(:strip_enclosure => true)
    f
  end
end


