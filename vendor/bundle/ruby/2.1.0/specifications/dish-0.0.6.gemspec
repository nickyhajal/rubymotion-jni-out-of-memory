# -*- encoding: utf-8 -*-
# stub: dish 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "dish"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lasse Bunk"]
  s.date = "2014-11-19"
  s.description = "Super simple conversion of hashes to plain Ruby objects. Great for consuming JSON API's."
  s.email = ["lassebunk@gmail.com"]
  s.homepage = "https://github.com/lassebunk/dish"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Super simple conversion of hashes to plain Ruby objects"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
