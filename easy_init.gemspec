# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_init/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_init"
  spec.version       = EasyInit::VERSION
  spec.authors       = ["Heath Attig"]
  spec.email         = ["heath.attig@daveramsey.com"]

  spec.summary       = "Easily create ruby objects with attributes"
  spec.description   = "Easy Init provides modules that can be included in your project to quickly and easily initialize objects in ruby."
  spec.homepage      = "https://github.com/Heath101/easy_init.git"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
