# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'formkeep/version'

Gem::Specification.new do |spec|
  spec.name          = "formkeep"
  spec.version       = Formkeep::VERSION
  spec.authors       = ["brandonpittman"]
  spec.email         = ["brandonpittman@gmail.com"]
  spec.summary       = %q{A library for interacting with the formkeep API.}
  spec.description   = %q{A library for interacting with the formkeep API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-rubocop"
  spec.add_development_dependency "guard-ctags-bundler"
  spec.add_development_dependency "rubocop"

  spec.add_dependency "slop", "< 3.9"
  spec.add_dependency "stickynotifications", "~> 0.0.5 "
end
