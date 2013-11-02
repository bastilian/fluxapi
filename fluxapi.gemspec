# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluxapi/version'

Gem::Specification.new do |spec|
  spec.name          = "fluxapi"
  spec.version       = Fluxapi::VERSION
  spec.authors       = ["Sebastian Gräßl"]
  spec.email         = ["sebastian.graessl@gmail.com"]
  spec.description   = %q{A Fluxiom.com api wrapper for ruby}
  spec.summary       = %q{A Fluxiom.com api wrapper for ruby}
  spec.homepage      = "https://github.com/bastilian/fluxapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fakeweb"
  spec.add_development_dependency "mocha"

  spec.add_dependency "httparty", ">= 0.5.0"
end
