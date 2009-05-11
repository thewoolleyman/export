require 'test/unit'
require 'rubygems'
require 'mocha'

require 'rubygems/commands/export_command'
require 'rubygems/exceptions'

class ExportCommandTest < Test::Unit::TestCase
  def test_export__really_lame_test__needs_rewrite
    command = Gem::Commands::ExportCommand.new
    
    command.expects(:execute)
    
    command.invoke
  end
end