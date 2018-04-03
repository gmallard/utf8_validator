# encoding: utf-8
#
# This file is machine generated.  DO NOT EDIT!
#
if Kernel.respond_to?(:require_relative)
  require_relative("./helper")
else
  $:.unshift(File.dirname(__FILE__))
  require 'helper'
end
#
# == Purpose
#
# Tests for the #{UTF8::Validator} implementation.
#
# Test data pulled and generated from:
#
# https://www.unicode.org/Public/10.0.0/ucd/
#
class TestUnicode10CJKRadicals < Test::Unit::TestCase
  #
  def setup
    @validator = UTF8::Validator.new
    @vercheck = ((RUBY_VERSION =~ /1.9/) or (RUBY_VERSION =~ /2./)) ? true : false
  end

  #
  def teardown
    @validator = nil
  end

  def test_unicode10_CJKRadicals
    test_data = [
    "\u2F00",  #
    "\u4E00",  #
    "\u2F01",  #
    "\u4E28",  #
    "\u2F02",  #
    "\u4E36",  #
    "\u2F03",  #
    "\u4E3F",  #
    "\u2F04",  #
    "\u4E59",  #
    "\u2F05",  #
    "\u4E85",  #
    "\u2F06",  #
    "\u4E8C",  #
    "\u2F07",  #
    "\u4EA0",  #
    "\u2F08",  #
    "\u4EBA",  #
    "\u2F09",  #
    "\u513F",  #
    "\u2F0A",  #
    "\u5165",  #
    "\u2F0B",  #
    "\u516B",  #
    "\u2F0C",  #
    "\u5182",  #
    "\u2F0D",  #
    "\u5196",  #
    "\u2F0E",  #
    "\u51AB",  #
    "\u2F0F",  #
    "\u51E0",  #
    "\u2F10",  #
    "\u51F5",  #
    "\u2F11",  #
    "\u5200",  #
    "\u2F12",  #
    "\u529B",  #
    "\u2F13",  #
    "\u52F9",  #
    "\u2F14",  #
    "\u5315",  #
    "\u2F15",  #
    "\u531A",  #
    "\u2F16",  #
    "\u5338",  #
    "\u2F17",  #
    "\u5341",  #
    "\u2F18",  #
    "\u535C",  #
    "\u2F19",  #
    "\u5369",  #
    "\u2F1A",  #
    "\u5382",  #
    "\u2F1B",  #
    "\u53B6",  #
    "\u2F1C",  #
    "\u53C8",  #
    "\u2F1D",  #
    "\u53E3",  #
    "\u2F1E",  #
    "\u56D7",  #
    "\u2F1F",  #
    "\u571F",  #
    "\u2F20",  #
    "\u58EB",  #
    "\u2F21",  #
    "\u5902",  #
    "\u2F22",  #
    "\u590A",  #
    "\u2F23",  #
    "\u5915",  #
    "\u2F24",  #
    "\u5927",  #
    "\u2F25",  #
    "\u5973",  #
    "\u2F26",  #
    "\u5B50",  #
    "\u2F27",  #
    "\u5B80",  #
    "\u2F28",  #
    "\u5BF8",  #
    "\u2F29",  #
    "\u5C0F",  #
    "\u2F2A",  #
    "\u5C22",  #
    "\u2F2B",  #
    "\u5C38",  #
    "\u2F2C",  #
    "\u5C6E",  #
    "\u2F2D",  #
    "\u5C71",  #
    "\u2F2E",  #
    "\u5DDB",  #
    "\u2F2F",  #
    "\u5DE5",  #
    "\u2F30",  #
    "\u5DF1",  #
    "\u2F31",  #
    "\u5DFE",  #
    "\u2F32",  #
    "\u5E72",  #
    "\u2F33",  #
    "\u5E7A",  #
    "\u2F34",  #
    "\u5E7F",  #
    "\u2F35",  #
    "\u5EF4",  #
    "\u2F36",  #
    "\u5EFE",  #
    "\u2F37",  #
    "\u5F0B",  #
    "\u2F38",  #
    "\u5F13",  #
    "\u2F39",  #
    "\u5F50",  #
    "\u2F3A",  #
    "\u5F61",  #
    "\u2F3B",  #
    "\u5F73",  #
    "\u2F3C",  #
    "\u5FC3",  #
    "\u2F3D",  #
    "\u6208",  #
    "\u2F3E",  #
    "\u6236",  #
    "\u2F3F",  #
    "\u624B",  #
    "\u2F40",  #
    "\u652F",  #
    "\u2F41",  #
    "\u6534",  #
    "\u2F42",  #
    "\u6587",  #
    "\u2F43",  #
    "\u6597",  #
    "\u2F44",  #
    "\u65A4",  #
    "\u2F45",  #
    "\u65B9",  #
    "\u2F46",  #
    "\u65E0",  #
    "\u2F47",  #
    "\u65E5",  #
    "\u2F48",  #
    "\u66F0",  #
    "\u2F49",  #
    "\u6708",  #
    "\u2F4A",  #
    "\u6728",  #
    "\u2F4B",  #
    "\u6B20",  #
    "\u2F4C",  #
    "\u6B62",  #
    "\u2F4D",  #
    "\u6B79",  #
    "\u2F4E",  #
    "\u6BB3",  #
    "\u2F4F",  #
    "\u6BCB",  #
    "\u2F50",  #
    "\u6BD4",  #
    "\u2F51",  #
    "\u6BDB",  #
    "\u2F52",  #
    "\u6C0F",  #
    "\u2F53",  #
    "\u6C14",  #
    "\u2F54",  #
    "\u6C34",  #
    "\u2F55",  #
    "\u706B",  #
    "\u2F56",  #
    "\u722A",  #
    "\u2F57",  #
    "\u7236",  #
    "\u2F58",  #
    "\u723B",  #
    "\u2F59",  #
    "\u723F",  #
    "\u2EA6",  #
    "\u4E2C",  #
    "\u2F5A",  #
    "\u7247",  #
    "\u2F5B",  #
    "\u7259",  #
    "\u2F5C",  #
    "\u725B",  #
    "\u2F5D",  #
    "\u72AC",  #
    "\u2F5E",  #
    "\u7384",  #
    "\u2F5F",  #
    "\u7389",  #
    "\u2F60",  #
    "\u74DC",  #
    "\u2F61",  #
    "\u74E6",  #
    "\u2F62",  #
    "\u7518",  #
    "\u2F63",  #
    "\u751F",  #
    "\u2F64",  #
    "\u7528",  #
    "\u2F65",  #
    "\u7530",  #
    "\u2F66",  #
    "\u758B",  #
    "\u2F67",  #
    "\u7592",  #
    "\u2F68",  #
    "\u7676",  #
    "\u2F69",  #
    "\u767D",  #
    "\u2F6A",  #
    "\u76AE",  #
    "\u2F6B",  #
    "\u76BF",  #
    "\u2F6C",  #
    "\u76EE",  #
    "\u2F6D",  #
    "\u77DB",  #
    "\u2F6E",  #
    "\u77E2",  #
    "\u2F6F",  #
    "\u77F3",  #
    "\u2F70",  #
    "\u793A",  #
    "\u2F71",  #
    "\u79B8",  #
    "\u2F72",  #
    "\u79BE",  #
    "\u2F73",  #
    "\u7A74",  #
    "\u2F74",  #
    "\u7ACB",  #
    "\u2F75",  #
    "\u7AF9",  #
    "\u2F76",  #
    "\u7C73",  #
    "\u2F77",  #
    "\u7CF8",  #
    "\u2EB0",  #
    "\u7E9F",  #
    "\u2F78",  #
    "\u7F36",  #
    "\u2F79",  #
    "\u7F51",  #
    "\u2F7A",  #
    "\u7F8A",  #
    "\u2F7B",  #
    "\u7FBD",  #
    "\u2F7C",  #
    "\u8001",  #
    "\u2F7D",  #
    "\u800C",  #
    "\u2F7E",  #
    "\u8012",  #
    "\u2F7F",  #
    "\u8033",  #
    "\u2F80",  #
    "\u807F",  #
    "\u2F81",  #
    "\u8089",  #
    "\u2F82",  #
    "\u81E3",  #
    "\u2F83",  #
    "\u81EA",  #
    "\u2F84",  #
    "\u81F3",  #
    "\u2F85",  #
    "\u81FC",  #
    "\u2F86",  #
    "\u820C",  #
    "\u2F87",  #
    "\u821B",  #
    "\u2F88",  #
    "\u821F",  #
    "\u2F89",  #
    "\u826E",  #
    "\u2F8A",  #
    "\u8272",  #
    "\u2F8B",  #
    "\u8278",  #
    "\u2F8C",  #
    "\u864D",  #
    "\u2F8D",  #
    "\u866B",  #
    "\u2F8E",  #
    "\u8840",  #
    "\u2F8F",  #
    "\u884C",  #
    "\u2F90",  #
    "\u8863",  #
    "\u2F91",  #
    "\u897E",  #
    "\u2F92",  #
    "\u898B",  #
    "\u2EC5",  #
    "\u89C1",  #
    "\u2F93",  #
    "\u89D2",  #
    "\u2F94",  #
    "\u8A00",  #
    "\u2EC8",  #
    "\u8BA0",  #
    "\u2F95",  #
    "\u8C37",  #
    "\u2F96",  #
    "\u8C46",  #
    "\u2F97",  #
    "\u8C55",  #
    "\u2F98",  #
    "\u8C78",  #
    "\u2F99",  #
    "\u8C9D",  #
    "\u2EC9",  #
    "\u8D1D",  #
    "\u2F9A",  #
    "\u8D64",  #
    "\u2F9B",  #
    "\u8D70",  #
    "\u2F9C",  #
    "\u8DB3",  #
    "\u2F9D",  #
    "\u8EAB",  #
    "\u2F9E",  #
    "\u8ECA",  #
    "\u2ECB",  #
    "\u8F66",  #
    "\u2F9F",  #
    "\u8F9B",  #
    "\u2FA0",  #
    "\u8FB0",  #
    "\u2FA1",  #
    "\u8FB5",  #
    "\u2ECC",  #
    "\u8FB6",  #
    "\u2FA2",  #
    "\u9091",  #
    "\u2FA3",  #
    "\u9149",  #
    "\u2FA4",  #
    "\u91C6",  #
    "\u2FA5",  #
    "\u91CC",  #
    "\u2FA6",  #
    "\u91D1",  #
    "\u2ED0",  #
    "\u9485",  #
    "\u2FA7",  #
    "\u9577",  #
    "\u2ED3",  #
    "\u957F",  #
    "\u2FA8",  #
    "\u9580",  #
    "\u2ED4",  #
    "\u95E8",  #
    "\u2FA9",  #
    "\u961C",  #
    "\u2FAA",  #
    "\u96B6",  #
    "\u2FAB",  #
    "\u96B9",  #
    "\u2FAC",  #
    "\u96E8",  #
    "\u2FAD",  #
    "\u9751",  #
    "\u2FAE",  #
    "\u975E",  #
    "\u2FAF",  #
    "\u9762",  #
    "\u2FB0",  #
    "\u9769",  #
    "\u2FB1",  #
    "\u97CB",  #
    "\u2ED9",  #
    "\u97E6",  #
    "\u2FB2",  #
    "\u97ED",  #
    "\u2FB3",  #
    "\u97F3",  #
    "\u2FB4",  #
    "\u9801",  #
    "\u2EDA",  #
    "\u9875",  #
    "\u2FB5",  #
    "\u98A8",  #
    "\u2EDB",  #
    "\u98CE",  #
    "\u2FB6",  #
    "\u98DB",  #
    "\u2EDC",  #
    "\u98DE",  #
    "\u2FB7",  #
    "\u98DF",  #
    "\u2EE0",  #
    "\u9963",  #
    "\u2FB8",  #
    "\u9996",  #
    "\u2FB9",  #
    "\u9999",  #
    "\u2FBA",  #
    "\u99AC",  #
    "\u2EE2",  #
    "\u9A6C",  #
    "\u2FBB",  #
    "\u9AA8",  #
    "\u2FBC",  #
    "\u9AD8",  #
    "\u2FBD",  #
    "\u9ADF",  #
    "\u2FBE",  #
    "\u9B25",  #
    "\u2FBF",  #
    "\u9B2F",  #
    "\u2FC0",  #
    "\u9B32",  #
    "\u2FC1",  #
    "\u9B3C",  #
    "\u2FC2",  #
    "\u9B5A",  #
    "\u2EE5",  #
    "\u9C7C",  #
    "\u2FC3",  #
    "\u9CE5",  #
    "\u2EE6",  #
    "\u9E1F",  #
    "\u2FC4",  #
    "\u9E75",  #
    "\u2EE7",  #
    "\u5364",  #
    "\u2FC5",  #
    "\u9E7F",  #
    "\u2FC6",  #
    "\u9EA5",  #
    "\u2EE8",  #
    "\u9EA6",  #
    "\u2FC7",  #
    "\u9EBB",  #
    "\u2FC8",  #
    "\u9EC3",  #
    "\u2EE9",  #
    "\u9EC4",  #
    "\u2FC9",  #
    "\u9ECD",  #
    "\u2FCA",  #
    "\u9ED1",  #
    "\u2FCB",  #
    "\u9EF9",  #
    "\u2FCC",  #
    "\u9EFD",  #
    "\u2EEA",  #
    "\u9EFE",  #
    "\u2FCD",  #
    "\u9F0E",  #
    "\u2FCE",  #
    "\u9F13",  #
    "\u2FCF",  #
    "\u9F20",  #
    "\u2FD0",  #
    "\u9F3B",  #
    "\u2FD1",  #
    "\u9F4A",  #
    "\u2EEC",  #
    "\u9F50",  #
    "\u2FD2",  #
    "\u9F52",  #
    "\u2EEE",  #
    "\u9F7F",  #
    "\u2FD3",  #
    "\u9F8D",  #
    "\u2EF0",  #
    "\u9F99",  #
    "\u2FD4",  #
    "\u9F9C",  #
    "\u2EF3",  #
    "\u9F9F",  #
    "\u2FD5",  #
    "\u9FA0",  #
    ]
    test_data.each do |string|
      assert @validator.valid_encoding?(string), "U10_CJKRadicals: #{string}"
      assert string.force_encoding("UTF-8").valid_encoding?, "U10_CJKRadicals: #{string}" if @vercheck
    end
  end

end
