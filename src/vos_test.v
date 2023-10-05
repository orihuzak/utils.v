module vos

import os

fn test_is_wsl() {
	assert is_wsl() == true
}

fn test_user_os() {
	assert user_os() == 'wsl'
}

fn test_open_url() {
	url := 'https://github.com'
	open_uri(url) or { assert false }
}

fn test_open_file() {
	file := './src/vos.v'
	open_uri(file) or { assert false }
}
