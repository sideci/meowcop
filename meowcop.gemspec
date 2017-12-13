# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meowcop/version'

Gem::Specification.new do |spec|
  spec.name          = "meowcop"
  spec.version       = Meowcop::VERSION
  spec.authors       = ["Masataka Kuwabara"]
  spec.email         = ["p.ck.t22@gmail.com"]

  spec.summary       = %q{MeowCop is a RuboCop configuration recommended by Actcat inc.}
  spec.description   = %q{MeowCop is a RuboCop configuration recommended by Actcat inc.}
  spec.homepage      = "https://github.com/sideci/meowcop"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rubocop', '>= 0.52.0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
