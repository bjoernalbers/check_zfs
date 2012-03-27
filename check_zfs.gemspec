# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'check_zfs'
  s.version     = '0.2.0'
  s.authors     = ['Björn Albers']
  s.email       = ['bjoernalbers@googlemail.com']
  s.description = 'Monitor the health of your ZFS pools with Nagios'
  s.summary     = "#{s.name}-#{s.version}"
  s.homepage    = 'https://github.com/bjoernalbers/check_zfs'
  
  s.add_dependency 'nagiosplugin', '~> 1.0.0'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'cucumber', '>= 1.0.2'
  s.add_development_dependency 'aruba', '>= 0.4.6'
  s.add_development_dependency 'aruba-doubles', '>= 0.2.0'
  s.add_development_dependency 'guard-cucumber', '>= 0.7.3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
