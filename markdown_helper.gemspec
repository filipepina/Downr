# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "markdown_helper"
  spec.version       = MarkdownHelper::VERSION
  spec.authors       = ["David Rivera"]
  spec.email         = ["david.r.rivera193@gmail.com"]
  spec.summary       = %q{Custom wrapper for RedCarpet}
  spec.description   = %q{Wrapper for RedCarpet, adding syntax highlighting, emojis etc.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake",

  spec.add_runtime_dependency "rails_emoji", # Emoji images and names.
  spec.add_runtime_dependency "pygmentize", "0.0.3" # Syntax highlighting
  spec.add_runtime_dependency "redcarpet", "3.1.1" # Markdown processing
end
