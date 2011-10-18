# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'check_zfs'
  s.version     = '0.0.1'
  s.authors     = ["Björn Albers"]
  s.email       = ["bjoernalbers@googlemail.com"]
  s.description = 'Monitor the health of your ZFS pools with Nagios'
  s.summary     = "#{s.name}-#{s.version}"
  s.homepage    = 'https://github.com/bjoernalbers/check_zfs'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
