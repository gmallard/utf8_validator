# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: utf8_validator 1.0.15 ruby lib

Gem::Specification.new do |s|
  s.name = "utf8_validator".freeze
  s.version = "1.0.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Guy Allard".freeze]
  s.date = "2017-10-12"
  s.description = "A State Machine implementation of a UTF-8 Encoding \nValidation algorithm.".freeze
  s.email = "allard.guy.m@gmail.com".freeze
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
    "test/test_code_points.rb",
    "test/test_raise_request.rb",
    "test/test_surrogate_half_first_point.rb",
    "test/test_unicode10_ArabicShaping.rb",
    "test/test_unicode10_BidiBrackets.rb",
    "test/test_unicode10_BidiCharacterTest.rb",
    "test/test_unicode10_BidiMirroring.rb",
    "test/test_unicode10_Blocks.rb",
    "test/test_unicode10_CJKRadicals.rb",
    "test/test_unicode10_CaseFolding.rb",
    "test/test_unicode10_CompositionExclusions.rb",
    "test/test_unicode10_DerivedAge.rb",
    "test/test_unicode10_DerivedBidiClass.rb",
    "test/test_unicode10_DerivedBinaryProperties.rb",
    "test/test_unicode10_DerivedCombiningClass.rb",
    "test/test_unicode10_DerivedCoreProperties.rb",
    "test/test_unicode10_DerivedDecompositionType.rb",
    "test/test_unicode10_DerivedEastAsianWidth.rb",
    "test/test_unicode10_DerivedGeneralCategory.rb",
    "test/test_unicode10_DerivedJoiningGroup.rb",
    "test/test_unicode10_DerivedJoiningType.rb",
    "test/test_unicode10_DerivedLineBreak.rb",
    "test/test_unicode10_DerivedName.rb",
    "test/test_unicode10_DerivedNormalizationProps.rb",
    "test/test_unicode10_DerivedNumericType.rb",
    "test/test_unicode10_DerivedNumericValues.rb",
    "test/test_unicode10_EastAsianWidth.rb",
    "test/test_unicode10_EmojiSources.rb",
    "test/test_unicode10_GraphemeBreakProperty.rb",
    "test/test_unicode10_HangulSyllableType.rb",
    "test/test_unicode10_Index.rb",
    "test/test_unicode10_IndicPositionalCategory.rb",
    "test/test_unicode10_IndicSyllabicCategory.rb",
    "test/test_unicode10_Jamo.rb",
    "test/test_unicode10_LineBreak.rb",
    "test/test_unicode10_NameAliases.rb",
    "test/test_unicode10_NamedSequences.rb",
    "test/test_unicode10_NamesList.rb",
    "test/test_unicode10_NormalizationCorrections.rb",
    "test/test_unicode10_NormalizationTest.rb",
    "test/test_unicode10_NushuSources.rb",
    "test/test_unicode10_PropList.rb",
    "test/test_unicode10_ScriptExtensions.rb",
    "test/test_unicode10_Scripts.rb",
    "test/test_unicode10_SentenceBreakProperty.rb",
    "test/test_unicode10_SpecialCasing.rb",
    "test/test_unicode10_StandardizedVariants.rb",
    "test/test_unicode10_TangutSources.rb",
    "test/test_unicode10_UnicodeData.rb",
    "test/test_unicode10_VerticalOrientation.rb",
    "test/test_unicode10_WordBreakProperty.rb",
    "test/test_utf8_validator.rb",
    "utf8_validator.gemspec",
    "utils/gencp.rb"
  ]
  s.homepage = "http://github.com/gmallard/utf8_validator".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A UTF-8 Encoding Validator.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>.freeze, [">= 1.8.0"])
    else
      s.add_dependency(%q<jeweler>.freeze, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<jeweler>.freeze, [">= 1.8.0"])
  end
end

