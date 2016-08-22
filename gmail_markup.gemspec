# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gmail_markup/version'

Gem::Specification.new do |spec|
  spec.name          = 'gmail_markup'
  spec.version       = GmailMarkup::VERSION
  spec.authors       = ['Mike Coutermarsh']
  spec.email         = ['coutermarsh.mike@gmail.com']

  spec.summary       = 'Gmail markup in rails'
  spec.description   = 'Gmail markup in rails'
  spec.homepage      = 'https://mikecoutermarsh.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'actionmailer', '>= 4.0'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-json_expectations'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'rubocop', '~> 0.34'
end
