module vos

fn test_wsl() {
	assert is_wsl() == true
	assert user_os() == 'wsl'
}

fn test_chromeos() {
	assert is_chromeos() == true
	assert user_os() == 'chromeos'
}

fn test_open_url() {
	url := 'https://github.com'
	open_uri(url) or { assert false }
}

fn test_open_file() {
	file := './src/vos.v'
	open_uri(file) or { assert false }
}
