module utils

fn test_is_wsl() {
	assert is_wsl() == true
}

fn test_which_os() {
	osname := which_os() or { panic(err.msg) }
	assert osname == 'wsl'
}
