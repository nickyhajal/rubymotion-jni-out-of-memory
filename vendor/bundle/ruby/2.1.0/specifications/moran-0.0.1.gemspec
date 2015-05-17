# -*- encoding: utf-8 -*-
# stub: moran 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "moran"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Darin Wilson"]
  s.date = "2015-04-16"
  s.description = "Moran is a simple JSON parser/outputter for RubyMotion Android"
  s.email = "darinwilson@gmail.com"
  s.homepage = "http://github.com/darinwilson/moran"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Simple JSON parsing and generation for RubyMotion Android"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<motion-gradle>, [">= 0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<motion-gradle>, [">= 0"])
      s.add_dependency(%q<bacon>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<motion-gradle>, [">= 0"])
    s.add_dependency(%q<bacon>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
