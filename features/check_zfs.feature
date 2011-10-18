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
			OK: All pools are online
			
			"""

	Scenario: WARNING if at least one pool is degraded and the others are online		
		Given a double of "zpool" with stdout:
			"""
			rpool	ONLINE
			tank	DEGRADED
			tank2	ONLINE
			"""
		When I run `check_zfs`
		Then the exit status should be 1
		And the stdout should contain exactly:
			"""
			Warning: 1 pool is degraded
			
			"""

	Scenario: CRITICAL if at least one pool is neither online nor degrated
			Given a double of "zpool" with stdout:
				"""
				rpool	ONLINE
				tank	DEGRADED
				tank2	FAULTED
				"""
			When I run `check_zfs`
			Then the exit status should be 2
			And the stdout should contain exactly:
				"""
				Critical: 1 pool is busted

				"""

	Scenario: UNKNOWN when ...
