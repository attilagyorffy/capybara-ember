# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/ember/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara-ember"
  spec.version       = Capybara::Ember::VERSION
  spec.authors       = ["Attila Györffy"]
  spec.email         = ["attila@attilagyorffy.com"]
  spec.summary       = %q{Makes Poltergeist Ember Run Loop-aware so your clicks are effective.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
