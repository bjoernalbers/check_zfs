# check_zfs

Monitor the health of your ZFS pools with Nagios

**DEPRECATED: Please use
[nagios-zfs](https://github.com/bjoernalbers/nagios-zfs) instead!**

## Introduction

Maybe you want to know if a passed out hard disk degrates your ZFS pool.
check_zfs converts the output of `zpool` into the (Nagios Plugin format)[http://nagiosplug.sourceforge.net/developer-guidelines.html]... really no rocket science.
Install this little gem on your ZFS host and let [Nagios](http://www.nagios.org/) run it via [NRPE](http://exchange.nagios.org/directory/Addons/Monitoring-Agents/NRPE--2D-Nagios-Remote-Plugin-Executor/details) to see if your pools are still green (=ONLINE).

## Installation and Usage

NRPE needs to be installed on your ZFS host and should have defined a check_zfs service.
Then install the check_zfs via RubyGems:

	`gem install check_zfs`

Run it manually for testing:

	`check_zfs`

## Caveats

This gem was tested under Solaris 10 10/09 with...

`pkginfo -l SUNWzfsu`[/VERSION:\s+(.*)/,1]
=> "11.10.0,REV=2006.05.18.01.46"

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.  Note: the existing tests may fail
* Commit, do not mess with Rakefile, gemspec or History.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Björn Albers. See LICENSE for details.
