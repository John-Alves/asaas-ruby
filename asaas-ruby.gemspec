# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asaas/version'

Gem::Specification.new do |spec|
  spec.name          = 'asaas-ruby'
  spec.version       = Asaas::VERSION
  spec.authors       = ['Marcos Junior']
  spec.email         = ['marcos@maini.com.br']

  spec.summary       = 'Asass.com Ruby API Wrapper'
  spec.description   = 'Asass.com Ruby API Wrapper'
  spec.homepage      = 'http://github.com/marcosgugs/asaas-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.4'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'webmock', '~> 3.7'

  spec.add_dependency 'activesupport', '>= 4.2'
  spec.add_dependency 'dry-monads', '~> 1.6.0'
  spec.add_dependency 'dry-struct', '~> 1.6.0'
  spec.add_dependency 'dry-types', '~> 1.7.0'
  spec.add_dependency 'typhoeus', '~> 1.4'
  spec.add_dependency 'virtus', '~> 2.0.0'
end
