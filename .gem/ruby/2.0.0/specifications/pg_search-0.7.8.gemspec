# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pg_search"
  s.version = "0.7.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Grant Hutchins", "Case Commons, LLC"]
  s.date = "2014-09-06"
  s.description = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"
  s.email = ["gems@nertzy.com", "casecommons-dev@googlegroups.com"]
  s.homepage = "https://github.com/Casecommons/pg_search"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.14"
  s.summary = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1"])
      s.add_runtime_dependency(%q<arel>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<with_model>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.1"])
      s.add_dependency(%q<activesupport>, [">= 3.1"])
      s.add_dependency(%q<arel>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<with_model>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.1"])
    s.add_dependency(%q<activesupport>, [">= 3.1"])
    s.add_dependency(%q<arel>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<with_model>, [">= 0"])
  end
end
