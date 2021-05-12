require_relative "lib/meowcop/version"

Gem::Specification.new do |spec|
  spec.name          = "meowcop"
  spec.version       = MeowCop::VERSION
  spec.licenses      = ["MIT"]
  spec.authors       = ["Sleeek Corporation"]
  spec.email         = "support@sider.review"

  spec.summary       = %q{A RuboCop configuration focusing Lint}
  spec.description   = %q{MeowCop is a RuboCop configuration recommended by Sider.}
  spec.homepage      = "https://github.com/sider/meowcop"

  spec.metadata = {
    "source_code_uri" => "https://github.com/sider/meowcop",
    "bug_tracker_uri" => "https://github.com/sider/meowcop/issues",
    "changelog_uri"   => "https://github.com/sider/meowcop/blob/HEAD/CHANGELOG.md",
  }

  spec.files         = Dir["LICENSE", "README.md", "config/**", "examples/.*.yml", "exe/**", "lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_runtime_dependency "rubocop", ">= 1.13.0", "< 2.0.0"

  spec.add_development_dependency "bundler", ">= 2.1"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "minitest", ">= 5.14"
  spec.add_development_dependency "minitest-reporters", ">= 1.4"
end
