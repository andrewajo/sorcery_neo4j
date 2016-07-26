# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sorcery_neo4j/version'

Gem::Specification.new do |spec|
  spec.name          = "sorcery_neo4j"
  spec.version       = SorceryNeo4j::VERSION
  spec.authors       = ["Andrew Joe"]
  spec.email         = ["andrew@ajoconsulting.com"]
  spec.summary       = %q{Neo4j adapter for sorcery}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ["lib/sorcery_neo4j.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'neo4j'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
