# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meowcop/version'

Gem::Specification.new do |spec|
  spec.name          = "meowcop"
  spec.version       = Meowcop::VERSION
  spec.licenses      = ["MIT"]
  spec.authors       = ["Masataka Kuwabara", "Sider, Inc."]
  spec.email         = "support@sider.review"

  spec.summary       = %q{A RuboCop configuration focusing Lint}
  spec.description   = %q{MeowCop is a RuboCop configuration recommended by Sider, Inc.}
  spec.homepage      = "https://github.com/sider/meowcop"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/sider/meowcop/issues",
    "changelog_uri" => "https://github.com/sider/meowcop/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/sider/meowcop"
  }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rubocop', '>= 0.73.0'

  spec.add_development_dependency "bundler", ">= 1.12", "< 3.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", ">= 5.11.3"
  spec.add_development_dependency "minitest-reporters", ">= 1.3.8"
end
