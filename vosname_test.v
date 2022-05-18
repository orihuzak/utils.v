module vosname

fn test_is_wsl() {
	assert is_wsl() == true
}

fn test_osname() {
	os_name := osname() or { panic(err) }
	assert os_name in ['wsl', 'windows', 'linux']
}

