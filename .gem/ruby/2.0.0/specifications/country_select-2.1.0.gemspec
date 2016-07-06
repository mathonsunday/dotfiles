# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "country_select"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Penner"]
  s.date = "2014-09-29"
  s.description = "Provides a simple helper to get an HTML select list of countries.  The list of countries comes from the ISO 3166 standard.  While it is a relatively neutral source of country names, it will still offend some users."
  s.email = ["stefan.penner@gmail.com"]
  s.homepage = "https://github.com/stefanpenner/country_select"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "country_select"
  s.rubygems_version = "2.0.14"
  s.summary = "Country Select Plugin"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<actionpack>, ["~> 3"])
      s.add_development_dependency(%q<pry>, ["~> 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
      s.add_development_dependency(%q<wwtd>, [">= 0"])
      s.add_runtime_dependency(%q<countries>, [">= 0.9.3", "~> 0.9"])
    else
      s.add_dependency(%q<actionpack>, ["~> 3"])
      s.add_dependency(%q<pry>, ["~> 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
      s.add_dependency(%q<wwtd>, [">= 0"])
      s.add_dependency(%q<countries>, [">= 0.9.3", "~> 0.9"])
    end
  else
    s.add_dependency(%q<actionpack>, ["~> 3"])
    s.add_dependency(%q<pry>, ["~> 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
    s.add_dependency(%q<wwtd>, [">= 0"])
    s.add_dependency(%q<countries>, [">= 0.9.3", "~> 0.9"])
  end
end
