# encoding: utf-8
require File.expand_path("../lib/konfigure/version", __FILE__)

Gem::Specification.new do |s|
  s.name              = "konfigure"
  s.version           = Konfigure::VERSION
  s.date              = '2013-10-07'
  s.authors           = ["jackson oates"]
  s.email             = ["jackson.oates@gmail.com"]
  s.homepage          = "https://github.com/allibubba/konfigure"
  s.summary           = "Ruby gem to add developer specific configs for rails proejcts"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test}/*`.split("\n")
  s.require_paths     = ["lib"]
  s.license           = 'MIT'
  s.required_ruby_version = '>= 1.9.3'
end