# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "sensu-extensions"
  spec.version       = "1.7.0"
  spec.authors       = ["Sean Porter"]
  spec.email         = ["portertech@gmail.com"]
  spec.summary       = "The Sensu extension loader library"
  spec.description   = "The Sensu extension loader library"
  spec.homepage      = "https://github.com/sensu/sensu-extensions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sensu-json", ">= 1.1.0"
  spec.add_dependency "sensu-logger"
  spec.add_dependency "sensu-settings"
  spec.add_dependency "sensu-extension"
  spec.add_dependency "sensu-extensions-occurrences", "1.1.0"
  spec.add_dependency "sensu-extensions-json", "1.0.0"
  spec.add_dependency "sensu-extensions-ruby-hash", "1.0.0"
  spec.add_dependency "sensu-extensions-only-check-output", "1.0.0"
  spec.add_dependency "sensu-extensions-debug", "1.0.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sensu-extensions-system-profile", "1.0.0"
  spec.add_development_dependency "bouncy-castle-java" if RUBY_PLATFORM =~ /java/
end
