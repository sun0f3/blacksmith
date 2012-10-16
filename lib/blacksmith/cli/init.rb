require 'thor'
class Blacksmith::Cli
  include Thor::Actions
  desc 'init', 'create project directory'
  def init(project_name)
    create_file "#{project_name}/config.rb" do
      "set :build_files << ['#{project_name}']"
    end
    create_file  "#{project_name}/source/#{project_name}.js"
    create_file  "#{project_name}/build/.gitkeep"
  end
end
