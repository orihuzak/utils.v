module utils

import os
import json

pub const (
	cmd_exe    = 'cmd.exe'
	powershell = 'powershell.exe'
)

pub fn is_wsl() bool {
	uname := os.uname()
	if uname.sysname != 'Linux' {
		return false
	}
	if uname.release.contains('microsoft') {
		return true
	} else {
		return false
	}
}

pub fn choose_execute() ?string {
	if is_wsl() {
		return '$utils.cmd_exe /c start '
	} else {
		return error('System is not wsl.')
	}
}

pub fn load_json<T>(path string) ?T {
	data := os.read_file(path) ?
	decoded := json.decode(T, data) ?
	return decoded
}
