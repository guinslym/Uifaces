# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ui_faces/version'

Gem::Specification.new do |spec|
  spec.name          = "ui_faces"
  spec.version       = UiFaces::VERSION
  spec.authors       = ["Guinsly Mondesir"]
  spec.email         = ["guinslym@gmail.com"]
  spec.summary       = %q{This gem uses UIfaces.com to fake user pictures on your app.}
  spec.description   = %q{UIFaces is a great website to find pictures to mockup your app. With this gems you can now implement more easily a pictures in your web app.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
