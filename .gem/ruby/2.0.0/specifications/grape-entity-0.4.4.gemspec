# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "grape-entity"
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh"]
  s.date = "2014-08-17"
  s.description = "Extracted from Grape, A Ruby framework for rapid API development with great conventions."
  s.email = ["michael@intridea.com"]
  s.homepage = "https://github.com/intridea/grape-entity"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "grape-entity"
  s.rubygems_version = "2.0.14"
  s.summary = "A simple facade for managing the relationship between your model and API."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.3.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.9"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 1.3.2"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.9"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 1.3.2"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.9"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
