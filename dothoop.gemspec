# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dothoop/version'

Gem::Specification.new do |spec|
  spec.name          = "dothoop"
  spec.version       = Dothoop::VERSION
  spec.authors       = ["Mwaki Harri Magotswi"]
  spec.email         = ["mmagotswi@bostonlogic.com"]

  spec.summary       = %q{Ruby library for Dotloop Public API Version 2.}
  spec.description   = %q{A Ruby wrapper around Version 2 of Dotloop's public API (https://dotloop.github.io/public-api/)}
  spec.homepage      = "https://github.com/bostonlogic/dothoop"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', '~> 1.0.3'
  spec.add_dependency "resource_kit", '~> 0.1.5'
  spec.add_dependency "kartograph", '~> 0.2.3'
  spec.add_dependency "faraday", '~> 0.9.1'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
end
