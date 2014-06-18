# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{utf8_validator}
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Guy Allard"]
  s.date = %q{2014-06-18}
  s.description = %q{A State Machine implementation of a UTF-8 Encoding 
Validation algorithm.}
  s.email = %q{allard.guy.m@gmail.com}
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
  s.homepage = %q{http://github.com/gmallard/utf8_validator}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A UTF-8 Encoding Validator.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 1.8.0"])
    else
      s.add_dependency(%q<jeweler>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 1.8.0"])
  end
end

