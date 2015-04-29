# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twister/version'

Gem::Specification.new do |spec|
  spec.name          = "twister"
  spec.version       = Twister::VERSION
  spec.authors       = ["Tim Hui"]
  spec.email         = ["timboh56@gmail.com"]
  spec.summary       = %q{Twitter user ranker engine}
  spec.description   = %q{Ranks twitter users based off various factors including relevance, follower/following counts, geography and refines parameters using machine learning.}
  spec.homepage      = "dopemagic.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "lib/twister"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

end
