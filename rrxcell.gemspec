# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rrxcell/version'

Gem::Specification.new do |spec|
  spec.name          = "rrxcell"
  spec.version       = Rrxcell::VERSION
  spec.authors       = ["sekizo"]
  spec.email         = ["sekizoworld@mac.com"]

  spec.summary       = %q{Standardize of operation manner for reading Excel files.}
  spec.description   = %q{Standardize of operation manner for reading Excel files(.xls, .xlsx).}
  spec.homepage      = "https://github.com/sekizo/rrxcell"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
