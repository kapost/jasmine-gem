# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jasmine/version"

Gem::Specification.new do |s|
  s.name               = %q{jasmine}
  s.version            = Jasmine::VERSION
  s.platform           = Gem::Platform::RUBY

  s.authors            = ["Rajan Agaskar", "Christian Williams", "Davis Frank"]
  s.summary            = %q{JavaScript BDD framework}
  s.description        = %q{Test your JavaScript without any framework dependencies, in any environment, and with a nice descriptive syntax.}
  s.email              = %q{jasmine-js@googlegroups.com}
  s.homepage           = "http://pivotal.github.com/jasmine/"
  s.license            = "MIT"

  s.files              = `git ls-files`.split("\n") | Dir.glob('jasmine/**/*')
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables        = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths      = ["lib"]
  s.rdoc_options       = ["--charset=UTF-8"]

  if ENV['RAILS_VERSION'] == 'pojs-rspec1'
    s.add_development_dependency 'rake-tasks'
  elsif ENV['RAILS_VERSION'] == 'pojs-rspec2'
    s.add_development_dependency 'rake-tasks'
  elsif ENV['RAILS_VERSION'] == 'rails2'
    # for development & test of Rails 2 Generators
    s.add_development_dependency 'rails', '2.3.11', "< 3"
  elsif ENV['RAILS_VERSION'] == 'rails2_3_5'
    # for development & test of Rails 2 Generators
    s.add_development_dependency 'rails', '= 2.3.5'
  else
    s.add_development_dependency 'rails', '>= 3.0.0'
  end

  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'json_pure'
  s.add_development_dependency 'nokogiri'

  s.add_development_dependency 'anchorman'

  s.add_dependency 'jasmine-core', '~> 1.3.1'
  s.add_dependency 'rack', '>= 1.2.1'
  s.add_dependency 'rspec', '>= 2.5.0'
  s.add_dependency 'selenium-webdriver', '>= 0.1.3'
end
