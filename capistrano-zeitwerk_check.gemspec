require_relative "lib/capistrano/zeitwerk_check/version"

Gem::Specification.new do |spec|
  spec.name          = "capistrano-zeitwerk_check"
  spec.version       = Capistrano::ZeitwerkCheck::VERSION
  spec.authors       = ["labocho"]
  spec.email         = ["labocho@penguinlab.jp"]

  spec.summary       = "Run `bin/rails zeitwerk:check` before deployment"
  spec.description   = "Run `bin/rails zeitwerk:check` before deployment"
  spec.homepage      = "https://github.com/socioart/capistrano-zeitwerk_check"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/socioart/capistrano-zeitwerk_check/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r(^exe/)) {|f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
