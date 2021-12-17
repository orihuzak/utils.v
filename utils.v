module utils

import os
import json

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

pub fn load_json<T>(path string) ?T {
	data := os.read_file(path) ?
	decoded := json.decode(T, data) ?
	return decoded
}

pub fn deference<T>(a []T, b []T) []T {
	return a.filter(!b.contains(it))
}

