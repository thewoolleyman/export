require 'test/unit'
require 'rubygems'
require 'mocha'

require 'rubygems/commands/export_command'
require 'rubygems/exceptions'

class ExportCommandTest < Test::Unit::TestCase
  def test_export
    command = Gem::Commands::ExportCommand.new
    
    GemInstaller.expects(:install)
    command.expects(:open_gem).with(gem_path)
    
    command.invoke(gem_name)
  end
end