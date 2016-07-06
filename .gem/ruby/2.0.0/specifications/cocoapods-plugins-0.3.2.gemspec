# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cocoapods-plugins"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Grandinetti", "Olivier Halligon"]
  s.date = "2014-11-02"
  s.description = "                         This CocoaPods plugin shows information about all available CocoaPods plugins\n                         (yes, this is very meta!).\n                         This CP plugin adds the \"pod plugins\" command to CocoaPods so that you can list\n                         all plugins (registered in the reference JSON hosted at CocoaPods/cocoapods-plugins)\n"
  s.homepage = "https://github.com/cocoapods/cocoapods-plugins"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "CocoaPods plugin which shows info about available CocoaPods plugins."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nap>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<nap>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<nap>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
