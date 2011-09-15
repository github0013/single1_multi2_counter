# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "single1_multi2_counter/version"

Gem::Specification.new do |s|
  s.name        = "single1_multi2_counter"
  s.version     = Single1Multi2Counter::VERSION
  s.authors     = ["ore"]
  s.email       = ["ore@mac.local"]
  s.homepage    = "https://github.com/github0013/single1_multi2_counter"
  s.summary     = %q{counts zenkaku as 2, hankaku and single as 1}
  s.description = %q{tested only on ruby 1.9.2}

  s.rubyforge_project = "single1_multi2_counter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
