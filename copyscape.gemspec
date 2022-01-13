# frozen_string_literal: true

require_relative 'lib/copyscape/version'

Gem::Specification.new do |spec|
  spec.name          = 'copyscape'
  spec.version       = Copyscape::VERSION
  spec.authors       = ['Ben VandenBos']
  spec.email         = ['bvandenbos@gmail.com']

  spec.summary       = 'Ruby wrapper for Copyscape API'
  spec.description   = 'Ruby wrapper for Copyscape API'
  spec.homepage      = 'http://github.com/codeur/copyscape-rb'
  spec.license       = 'MIT'
  spec.required_rubygems_version = '>= 1.3.6'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('httparty', '>= 0.8.1')
  spec.add_dependency('nokogiri', '~> 1.5')
end
