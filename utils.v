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

pub fn load_json<T>(path string) ?T {
	data := os.read_file(path) ?
	decoded := json.decode(T, data) ?
	return decoded
}
