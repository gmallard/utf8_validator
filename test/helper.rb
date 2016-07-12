# encoding: utf-8
#
#--
# Copyright (c) 2016 Guy Allard
#--
require 'rubygems'
require 'test/unit'

if Kernel.respond_to?(:require_relative)
  require_relative("../lib/utf8_validator")
else
  $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
  require 'utf8_validator'
end


class Test::Unit::TestCase
end
