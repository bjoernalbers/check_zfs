Feature: Check ZFS

	In order to notified before it's to late
	As an agile System-Administrator
	I want the health of my ZFS pools monitored with Nagios by check_zfs

	Scenario Outline: Exit status and stdout
		Given a double of "zpool" with stdout:
			"""
			rpool	<rpool>
			tank	<tank>
			tank2	<tank2>
			"""
		When I run `check_zfs`
		Then the exit status should be <exit>
		And the stdout should contain exactly:
			"""
			<stdout>
		
			"""
			
		Examples:
		 | rpool  | tank     | tank2   | exit | stdout                                    |
		 | ONLINE | ONLINE   | ONLINE  | 0    | OK: 3 ONLINE                              |
		 | ONLINE | DEGRADED | ONLINE  | 1    | Warning: 1 DEGRADED, 2 ONLINE             |
		 | ONLINE | DEGRADED | FAULTED | 2    | Critical: 1 FAULTED, 1 DEGRADED, 1 ONLINE |