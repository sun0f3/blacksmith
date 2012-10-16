
class Blacksmith::Cli
  desc 'build', 'build files'
  def build
    Blacksmith.app.build
  end



  def build(file, env)
    f = get_file(file)
    output = Preprocessor.proccess(f)

    if env == 'production'
      output = Uglifier.compile(output)
    end

    output_folder =  env == 'production' ? "#{ROOT}/build" : "#{ROOT}/source/javascripts/temp"
    output_file = File.new("#{output_folder}/#{file.gsub('_', '-')}.js", 'w')
    output_file.write(output)
    output_file_gzip = File.new("#{output_folder}/#{file.gsub('_', '-')}.js.gz", 'w')
    output_file_gzip.write(output.gzip)

  end

  protected

  def get_file(path)
    File.open("#{ROOT}/source/javascripts/#{path}.js")
  end

end
