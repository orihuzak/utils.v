module vosname

import os

pub fn is_wsl() bool {
	uname := os.uname()
	if uname.sysname != 'Linux' {
		return false
	}
	if uname.release.contains('microsoft') {
		return true
	}
	return false
}

pub fn osname() ?string {
	uname := os.uname()
	match uname.sysname {
		'Linux' {
			if uname.release.contains('microsoft') {
				return 'wsl'
			}
			return 'linux'
		}
		'Microsoft Windows' {
			return 'windows'
		}
		else {
			return error('could not identified your os.')
		}
	}
}


