module Blacksmith
  class Preprocessor
    class << self
      attr_accessor :env
      def config
        yield self if block_given?
        self
      end

      def proccess(file)
        input_file = file.readlines
        output = input_file.map { |line|
          if line =~ /\/\/#/
            #line.gsub!(/\/\/#/, '').strip!
            case line
            when /include/
              include_arg = line.match(/include\s+(.*)/)[1].strip
              Preprocessor.proccess(get_file(include_arg))
            when /insert/
              include_arg = line.match(/insert\s+(.*)/)[1].strip
              get_file(include_arg).read
            when /if_env/
              env = line.match(/if_env\s+(.*)/)[1].strip
              if @env == env
                line
              else
                ''
              end
            else
              line
            end
          else
            line
          end
        }.join()
      end
    end
  end

  class CommandShell
    class << self
      attr_accessor :prefix
      def config
        yield self
      end

      def parse(line)
        nil or Object
      end
    end

    attr_accessor :command
      attr_accessor :options
  end
end
