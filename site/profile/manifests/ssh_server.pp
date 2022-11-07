class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0YN3H+aCcX/SP16mSnpVoTYCi+Zd2H04rjD79VfMTBZg/NWfuDR8lD8xIUltwq2ZVF8J2nVNaYL8gf1STbXGM2PfIGyiTl6fQ0+ZY9wO/TvCaVMb1T+/eMCua+Buo66sMprc+2fOTzJTKhcyCAW8LXN+hg3xbDXmFlN4zjsUxBG4Bhvo694dRMXYvhAKKbUNzIt/naC9vvHaTDiVlcjwRMKXywEx8vjT5uCK+hpmL2Gv6TK/4jM0EWlyg5202szrVrGBOKSQALV/uaStPGeTPODfvGMFa9Ze4oRoMd6ozvu8PEIVzlT4hbWkS03VgWBo0lF3YWNp91UYydY5mqvLr root@master.puppet.vm',
	}  
}
