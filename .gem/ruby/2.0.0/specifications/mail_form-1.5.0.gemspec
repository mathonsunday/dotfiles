# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mail_form"
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\u{e9} Valim", "Carlos Ant\u{f4}nio"]
  s.date = "2013-09-21"
  s.description = "Send e-mail straight from forms in Rails with I18n, validations, attachments and request information."
  s.email = "contact@plataformatec.com.br"
  s.homepage = "https://github.com/plataformatec/mail_form"
  s.require_paths = ["lib"]
  s.rubyforge_project = "mail_form"
  s.rubygems_version = "2.0.14"
  s.summary = "Send e-mail straight from forms in Rails with I18n, validations, attachments and request information."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionmailer>, ["< 5", ">= 3.2"])
      s.add_runtime_dependency(%q<activemodel>, ["< 5", ">= 3.2"])
    else
      s.add_dependency(%q<actionmailer>, ["< 5", ">= 3.2"])
      s.add_dependency(%q<activemodel>, ["< 5", ">= 3.2"])
    end
  else
    s.add_dependency(%q<actionmailer>, ["< 5", ">= 3.2"])
    s.add_dependency(%q<activemodel>, ["< 5", ">= 3.2"])
  end
end
