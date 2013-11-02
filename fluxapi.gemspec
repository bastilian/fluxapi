# coding: utf-8
lib = File.expand_path('lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluxapi"
  spec.version       = "0.6.1"
  spec.authors       = ["Sebastian Gräßl"]
  spec.email         = ["sebastian.graessl@gmail.com"]
  spec.description   = %q{A Fluxiom.com api wrapper for ruby}
  spec.summary       = %q{A Fluxiom.com api wrapper for ruby}
  spec.homepage      = "https://github.com/bastilian/fluxapi"
  spec.metadata      = { "issue_tracker" => "https://github.com/bastilian/fluxapi/issues" }
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake",    "10.1.0"
  spec.add_development_dependency "fakeweb", "1.3.0"
  spec.add_development_dependency "mocha",   "0.14.0"

  spec.add_dependency "httparty", "0.12.0"
end
