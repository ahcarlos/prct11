# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Bibliografia/version'

Gem::Specification.new do |spec|
  spec.name          = "Bibliografia"
  spec.version       = Bibliografia::VERSION
  spec.authors       = [" Carlos de Armas Hernández"]
  spec.email         = ["alu0100816167@ull.edu.es"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Practica 8 - List}
  spec.description   = %q{Lenguajes y paradigmas de la programación}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"
  spec.add_development_dependency "guard"
  #spec.add_development_dependency "guard-rspec"
  #spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rdoc"


end
