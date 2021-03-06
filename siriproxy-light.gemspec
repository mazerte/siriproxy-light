# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-light"
  s.version     = "0.0.1"
  s.authors     = ["mazerte"]
  s.email       = ["mathieu.desve@me.com"]
  s.homepage    = "https://github.com/mazerte/"
  s.summary     = %q{A Light plugin for SiriProxy that controls a light on my home}
  s.description = %q{This is largely a demo plugin of a real-world implementation of SiriProxy}

  s.rubyforge_project = "siriproxy-light"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "json"
  s.add_runtime_dependency "httparty"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rake"

end