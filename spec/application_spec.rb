require File.expand_path('../../lib/blacksmith.rb', __FILE__)
describe Blacksmith::Application do
  it 'init application' do
    Blacksmith::Application.new
    Blacksmith.app.class.should be(Blacksmith::Application)
  end
end
