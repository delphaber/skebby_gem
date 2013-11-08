# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skuby/version'

Gem::Specification.new do |spec|
  spec.name          = "skuby"
  spec.version       = Skuby::VERSION
  spec.authors       = ["Fabrizio Monti"]
  spec.email         = ["fabrizio.monti@welaika.com"]
  spec.description   = %q{A Ruby interface to Skebby}
  spec.summary       = %q{Allows you to send SMS through Skebby SMS Gateway}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"
  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-plus"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "coveralls"
end