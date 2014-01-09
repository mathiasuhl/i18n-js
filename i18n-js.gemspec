# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "i18n/js/version"

Gem::Specification.new do |s|
  s.name        = "i18n-js-pika"
  s.version     = I18n::JS::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nando Vieira", "PikachuEXE"]
  s.email       = ["fnando.vieira@gmail.com", "pikachuexe@gmail.com"]
  s.homepage    = "http://github.com/PikachuEXE/i18n-js"
  s.summary     = "Forked version of original i18n-js. It's a small library to provide the Rails I18n translations on the Javascript."
  s.description = "Forked version of original i18n-js. It contains some pull requests that are not pulled yet on the original repo. Switch back to the original one when it's ready."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.license       = 'MIT'

  s.add_dependency "i18n", "~> 0.6"
  s.add_development_dependency "appraisal", '>= 0.5.2'
  s.add_development_dependency "activesupport"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "pry-meta"
end
