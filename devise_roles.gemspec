# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'devise_roles/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_roles"
  spec.version       = DeviseRoles::VERSION
  spec.authors       = ["MarkusBansky"]
  spec.email         = ["benovskym@gmail.com"]

  spec.summary       = %q{A simple gem for devise roles.}
  spec.description   = %q{Gem that helps you to organaize your users with roles and manipulate them. Visit HOMEPAGE for more information how to use this gem.}
  spec.homepage      = "https://github.com/MarkusBansky/devise_roles"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.platform      = Gem::Platform::RUBY

  spec.add_dependency "devise", "~> 3.5.2"
  spec.add_dependency "rails", '>= 4.2.0'
  spec.add_development_dependency 'test_declarative', '>=0.0.2'
  spec.add_development_dependency 'mocha', '>=0.14'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency "bundler", "~> 1.10"

  spec.required_rubygems_version = '>= 1.3.6'
end
