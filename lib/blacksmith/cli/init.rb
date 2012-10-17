require 'thor'
class Blacksmith::Cli
  include Thor::Actions
  desc 'init', 'create project [name]'
  def init(project_name)
    create_file "#{project_name}/config.rb" do
      "set :build_files, ['#{project_name}']"
      "set :jshint,  false # in development "
      "set :gzip,    true"
      "set :compile, false"
    end
    create_file  "#{project_name}/source/#{project_name}.js"
    create_file  "#{project_name}/build/.gitkeep"
  end
end
