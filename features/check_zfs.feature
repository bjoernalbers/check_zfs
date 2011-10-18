Feature: Check ZFS

	In order to notified before it's to late
	As an agile System-Administrator
	I want the health of my ZFS pools monitored with Nagios by check_zfs

	Scenario: OK if all pools are ONLINE
		Given a double of "zpool" with stdout:
			"""
			rpool	ONLINE
			tank	ONLINE
			tank2	ONLINE
			"""
		When I run `check_zfs`
		Then the exit status should be 0
		And the stdout should contain exactly:
			"""
			ZFS OK: All pools are online
			
			"""

	Scenario: WARNING if at least one pool is degrated and the others are online		
	Scenario: CRITICAL if at least one pool is neither online nor degrated
	Scenario: UNKNOWN when ...
