# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pasco}
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["amardaxini"]
  s.date = %q{2010-06-24}
  s.description = %q{pasco is a gem that reads ie histories on provideing ie history file i.e *.dat}
  s.email = %q{amardaxini@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/cygwin1.dll",
     "lib/pasco",
     "lib/pasco.exe",
     "lib/pasco.rb",
     "pasco.gemspec",
     "test/helper.rb",
     "test/test_pasco.rb"
  ]
  s.homepage = %q{http://github.com/amardaxini/pasco}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pasco}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{read ie browsing histories based on pasco open source project}
  s.test_files = [
    "test/test_pasco.rb",
     "test/helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

