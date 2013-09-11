# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_bn/version'

Gem::Specification.new do |spec|
  spec.name          = "to_bn"
  spec.version       = ToBn::VERSION
  spec.authors       = ['Ali Hasan Imam']
  spec.email         = ['imam.aiub@gmail.com']
  spec.description   = %q{Ruby Gem to convert number and date from English to Bengali.}
  spec.summary       = %q{Bengali Conversion}
  spec.homepage      = 'https://github.com/codedefine/to_bn.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
