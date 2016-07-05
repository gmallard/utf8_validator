# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: utf8_validator 1.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "utf8_validator"
  s.version = "1.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guy Allard"]
  s.date = "2016-07-05"
  s.description = "A State Machine implementation of a UTF-8 Encoding \nValidation algorithm."
  s.email = "allard.guy.m@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "examples/fullstring.rb",
    "lib/utf8_validator.rb",
    "lib/validation/errors.rb",
    "lib/validation/validator.rb",
    "test/helper.rb",
    "test/test_raise_request.rb",
    "test/test_utf8_validator.rb",
    "utf8_validator.gemspec"
  ]
  s.homepage = "http://github.com/gmallard/utf8_validator"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A UTF-8 Encoding Validator."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 1.8.0"])
    else
      s.add_dependency(%q<jeweler>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 1.8.0"])
  end
end

