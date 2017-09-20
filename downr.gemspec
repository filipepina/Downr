# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'downr/version'

Gem::Specification.new do |spec|
  spec.name          = "downr"
  spec.version       = Downr::VERSION
  spec.authors       = ["David Rivera"]
  spec.email         = ["david.r.rivera193@gmail.com"]
  spec.summary       = %q{Rails friendly Github Falvored Markdown}
  spec.description   = %q{Wrapper for RedCarpet, adding syntax highlighting, emojis etc.}
  spec.homepage      = "https://github.com/davidrivera/Downr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "yard"

  spec.add_dependency 'rails', '>= 3.1.0'
  spec.add_dependency "rails_emoji", "~> 1.7.1"
  spec.add_dependency "pygmentize", "~>0.0.3" 
  spec.add_dependency "redcarpet", "~>3.2.3"
  spec.add_dependency "html-pipeline", "~> 1.9.0"
  spec.add_dependency "sanitize", "~> 3.0.0"
end
