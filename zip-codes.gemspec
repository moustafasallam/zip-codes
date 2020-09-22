# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zip-codes'

Gem::Specification.new do |spec|
  spec.name          = 'postal-codes'
  spec.version       = ZipCodes::VERSION
  spec.authors       = ['Moustafa Sallam']
  spec.email         = ['moustafasallam2@gamil.com']
  spec.description   = %s(Simple gem to get city, state, and time zone for a given zip code)
  spec.summary       = %s(Gem to identify zip codes inside US)
  spec.homepage      = 'https://github.com/moustafasallam/zip-codes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency "rspec", "~> 3.2"
end
