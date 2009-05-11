class Gem::Commands::ExportCommand < Gem::Command
  #new, #execute, #arguments, #defaults_str, #description and #usage

  def initialize
    super 'export', 'Export installed gems to a yaml file format'
  end

  def execute
    puts "Running export command..."
  end
  
end

Gem::CommandManager.instance.register_command :export
