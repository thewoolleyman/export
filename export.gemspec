# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{export}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad Woolley"]
  s.date = %q{2009-05-11}
  s.description = %q{      Export installed gems to a YAML file.
}
  s.email = %q{thewoolleyman@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "README.markdown",
     "Rakefile",
     "lib/rubygems/commands/export_command.rb",
     "rubygems_plugin.rb"
  ]
  s.homepage = %q{http://github.com/thewoolleyman/export}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{export}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Gem Command to export installed gems to a YAML file.}
  s.test_files = [
    "test/export_command_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, ["~> 0.9.5"])
    else
      s.add_dependency(%q<mocha>, ["~> 0.9.5"])
    end
  else
    s.add_dependency(%q<mocha>, ["~> 0.9.5"])
  end
end
