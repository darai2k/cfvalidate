# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cfvalidate/version'

Gem::Specification.new do |spec|
  spec.name          = "cfvalidate"
  spec.version       = Cfvalidate::VERSION
  spec.authors       = ["Daichi Arai"]
  spec.email         = ["daichi2k@gmail.com"]
  spec.description   = %q{CloudFormation Validator}
  spec.summary       = %q{Run cloud formation validate template api}
  spec.homepage      = "http://github.com/darai2k/cfvalidate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "aws-sdk", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
