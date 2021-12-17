module utils

fn test_is_wsl() {
	assert is_wsl() == true
}

fn test_osname() {
	os_name := osname() or { panic(err.msg) }
	assert os_name in ['wsl', 'windows', 'linux']
}

fn test_deference() {
	a := [1, 2, 100, 4, 200]
	b := [1, 2, 3, 4, 5]
	assert deference(a, b) == [100, 200]
}
