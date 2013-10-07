# encoding: utf-8
require File.expand_path("../lib/konfigure/version", __FILE__)

Gem::Specification.new do |s|
  s.name              = "konfigure"
  s.version           = Konfigure::VERSION
  s.authors           = ["jackson oates"]
  s.email             = ["jackson.oates@gmail.com"]
  s.homepage          = "https://github.com/allibubba/konfigure"
  s.summary           = "konfigure for RH"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test}/*`.split("\n")
  s.require_paths     = ["lib"]
  s.license           = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  #s.add_dependency 'activerecord'
  #s.add_dependency 'omniauth', '~> 1.0'

  s.description = <<-EOM
  Super stuff
EOM
end