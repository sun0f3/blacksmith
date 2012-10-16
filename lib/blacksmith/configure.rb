module Blacksmith
  class Configure
    attr_accessor :build_files

    def initialize

    end


    def set(k, v)
      instance_variable_set(:"@#{k}", v)
    end

    def exec_config_file(&block)
      instance_eval(File.read(File.join(Dir.pwd, 'config.rb')))
    end


    def build_folder
      Blacksmith.app.root + '/build'
    end
  end
end
