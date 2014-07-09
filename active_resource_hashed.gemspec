# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_resource_hashed/version'

Gem::Specification.new do |gem|
  gem.name          = "active_resource_hashed"
  gem.version       = ActiveResourceHashed::VERSION
  gem.authors       = ["Shane Davies"]
  gem.email         = ["shane@domain7.com"]
  gem.description   = 'Gem extends active resource to consume devise_hash_token_authenticatble services'
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/domain7/active_resource_hashed"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('activeresource', '>= 3.2')
end
