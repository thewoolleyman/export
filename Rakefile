require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "export"
    s.summary = "Gem Command to export installed gems to a YAML file."
    s.description = <<-DESC
      Export installed gems to a YAML file.
    DESC
    s.email = "thewoolleyman@gmail.com"
    s.homepage = "http://github.com/thewoolleyman/export"
    s.rubyforge_project = "export"
    s.authors = ["Chad Woolley"]
    s.has_rdoc = false
    s.files = FileList["CHANGELOG.rdoc","lib/rubygems/commands/export_command.rb","Rakefile","README.markdown","rubygems_plugin.rb"]
    
    # Testings
    s.test_files = FileList["test/**/*_test.rb"]
    s.add_development_dependency 'mocha', '~> 0.9.5'
  end

rescue LoadError
  puts "Jeweler not available. Install it for jeweler-related tasks with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => :test