
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "freistil/rubocop/version"

Gem::Specification.new do |spec|
  spec.name          = "freistil-rubocop"
  spec.version       = Freistil::Rubocop::VERSION
  spec.authors       = ["freistil IT Ltd"]
  spec.email         = ["ops@freistil.it"]
  spec.license       = "Apache-2.0"

  spec.summary       = %q{Rubocop style definitions for freistil IT}
  spec.description   = %q{Ruby style definitions shared by the freistil IT team}
  spec.homepage      = "https://github.com/freistil/freistil-rubocop"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.65.0"
  spec.add_dependency "rubocop-rspec", "~> 1.29", ">= 1.29.1"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
