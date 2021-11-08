module utils

import os
import json

pub const (
	cmd_exe    = 'cmd.exe'
	powershell = 'powershell.exe'
)

pub fn is_wsl() bool {
	return os.exists_in_system_path(cmd_exe)
}

pub fn choose_execute() ?string {
	// check the system and choose a command
	if is_wsl() {
		return '$cmd_exe /c start '
	} else {
		return error('System is not wsl.')
	}
}

pub fn load_json<T>(path string) T {
	data := os.read_file(path) or { panic(err) }
	decoded := json.decode(T, data) or { panic(err) }
	return decoded
}

