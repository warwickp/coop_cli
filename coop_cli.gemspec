# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','coop_cli.rb'])

spec = Gem::Specification.new do |s| 
  s.name = 'coop_cli'
  s.version = CoopCli::VERSION
  s.author = 'Warwick Poole'
  s.email = 'wpoole@gmail.com'
  s.homepage = 'https://github.com/warwickp/coop_cli'
  s.platform = Gem::Platform::RUBY
  s.summary = 'cli co-op interface'
  s.description = 'A small cli interface to Co-op, the team collaboration tool from Harvest'
  s.files = %w(
    bin/coop_cli
    lib/coop_cli.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','coop_cli.rdoc']
  s.rdoc_options << '--title' << 'coop_cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables = ["coop_cli"]
  s.add_dependency('httparty')
  s.add_dependency('gli')
  s.add_dependency('json')
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
end
