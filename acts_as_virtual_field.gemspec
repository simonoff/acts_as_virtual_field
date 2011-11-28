# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'acts_as_virtual_field/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Alexander Simonov"]
  gem.email         = ["alex@simonov.me"]
  gem.platform      = Gem::Platform::RUBY
  gem.description   = %q{Rails3 plugin to define virtual field types on any column of model}
  gem.summary       = %q{Rails3 plugin to define virtual field types on any column of model}
  gem.homepage      = ""
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = %q{acts_as_virtual_field}
  gem.require_paths = ["lib"]
  gem.licenses      = ["MIT"]
  gem.version       = ::ActsAsVirtualField::VERSION
  gem.add_dependency 'rails', '~> 3.1'
  gem.add_dependency 'formtastic', '~> 2.0'
  gem.add_development_dependency 'rspec', "~> 2.6"
end
