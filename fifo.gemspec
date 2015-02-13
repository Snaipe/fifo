# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fifo}
  s.version = "2.0.0"
  s.platform = Gem::Platform::RUBY
  s.licenses = ["MIT"]
  s.authors = ["Emil Loer", "Snaipe"]
  s.email = %q{franklinmathieu@gmail.com}
  s.homepage = %q{http://github.com/Snaipe/fifo}
  s.summary = %q{An IRC bot that listens to GitHub webhooks}
  s.description = %q{An IRC bot that listens to GitHub webhooks}
 
  #s.rubyforge_project = "gitbot"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.extra_rdoc_files = [
    "LICENSE",
  ]

  s.default_executable = %q{fifo}

  s.add_runtime_dependency(%q<cinch>, ["~> 2.2.4"])
  s.add_runtime_dependency(%q<sinatra>, ["~> 1.4.5"])
  s.add_runtime_dependency(%q<json>, [">= 0"])
  s.add_runtime_dependency(%q<unicode_utils>, ["~> 1.4.0"])

  s.add_development_dependency(%q<bundler>, ["~> 1.8.0"])

  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
end
