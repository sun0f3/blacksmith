
class Blacksmith::Cli
  desc 'build', 'build files'
  def build
    Blacksmith.app.build
  end

end
