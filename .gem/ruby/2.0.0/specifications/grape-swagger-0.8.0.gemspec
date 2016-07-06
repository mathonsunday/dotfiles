# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "grape-swagger"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Vandecasteele"]
  s.date = "2014-08-31"
  s.email = ["tim.vandecasteele@gmail.com"]
  s.homepage = "https://github.com/tim-vandecasteele/grape-swagger"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "A simple way to add auto generated documentation to your Grape API that can be displayed with Swagger."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>, [">= 0"])
      s.add_runtime_dependency(%q<grape-entity>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<rack-cors>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["= 0.24.1"])
      s.add_development_dependency(%q<kramdown>, ["~> 1.4.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.1.2"])
      s.add_development_dependency(%q<rouge>, ["~> 1.6.1"])
    else
      s.add_dependency(%q<grape>, [">= 0"])
      s.add_dependency(%q<grape-entity>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<rack-cors>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["= 0.24.1"])
      s.add_dependency(%q<kramdown>, ["~> 1.4.1"])
      s.add_dependency(%q<redcarpet>, ["~> 3.1.2"])
      s.add_dependency(%q<rouge>, ["~> 1.6.1"])
    end
  else
    s.add_dependency(%q<grape>, [">= 0"])
    s.add_dependency(%q<grape-entity>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<rack-cors>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["= 0.24.1"])
    s.add_dependency(%q<kramdown>, ["~> 1.4.1"])
    s.add_dependency(%q<redcarpet>, ["~> 3.1.2"])
    s.add_dependency(%q<rouge>, ["~> 1.6.1"])
  end
end
