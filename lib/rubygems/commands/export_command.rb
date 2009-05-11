require 'geminstaller'

class Gem::Commands::ExportCommand < Gem::Command
  #new, #execute, #arguments, #defaults_str, #description and #usage

  def initialize # :nodoc:
    super 'export', 'Export installed gems to a yaml file format'
  end

  def execute # :nodoc:
    puts "Exporting to gems.yml"
    # TODO: This is a huge hack to work with current version of GemInstaller.  Need to modify
    # geminstaller to have a proper --export [FILE] option to export all installed gems 
    # to a specified yaml file, with no required input geminstaller.yml file
    system('touch /tmp/gems-to-exclude.yml') || raise
    output = `geminstaller --print-rogue-gems --config=/tmp/gems-to-exclude.yml`
    File.open('gems.yml', 'w') {|f| f.write(output) }
  end

  def arguments # :nodoc:
    ""
  end

  def description # :nodoc:
    <<-EOF
Exports all installed gems to a YAML file
    EOF
  end

  def usage # :nodoc:
    "#{program_name}"
  end
end

Gem::CommandManager.instance.register_command :export
