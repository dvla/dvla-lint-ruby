# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dvla/lint/version'

Gem::Specification.new do |spec|
  spec.name          = 'dvla-lint'
  spec.version       = Dvla::Lint::VERSION
  spec.authors       = ['Driver and Vehicle Licensing Agency (DVLA)', 'Nigel Brookes-Thomas']
  spec.email         = ['nigel.brookes-thomas@dvla.gov.uk']

  spec.summary       = 'Rubocop standard rules'
  spec.description   = 'The standard Rubocop rules for the DVLA'
  spec.homepage      = 'https://github.com/dvla/dvla-lint-ruby'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_development_dependency 'bundler', '~> 4.0'
  spec.add_development_dependency 'pry', '~> 0.16'
  spec.add_development_dependency 'rake', '~> 13.4'
  spec.add_development_dependency 'rspec', '~> 3.13'

  spec.add_runtime_dependency 'rubocop', '~> 1.92'
  spec.add_runtime_dependency 'rubocop-performance', '~> 1.27'
  spec.add_runtime_dependency 'rubocop-rails', '~> 2.38'
  spec.add_runtime_dependency 'tty-config', '~> 0.6'
  spec.add_runtime_dependency 'tty-prompt', '~> 0.23'
end
