module Blacksmith
  class Configure
    attr_accessor :build_files, :jshint, :gzip, :compile

    def initialize
      exec_config_file
    end


    def set(k, v)
      instance_variable_set(:"@#{k}", v)
    end

    def exec_config_file
      instance_eval(File.read(File.join(Dir.pwd, 'config.rb')))
    end


    def build_folder
      Blacksmith.app.root + '/build'
    end
    def source_folder
      Blacksmith.app.root + '/source'
    end


    def env
      :production
    end
  end
end
