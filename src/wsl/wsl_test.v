module wsl

fn test_getwinenv() {
	assert getwinenv('SYSTEMROOT')! == 'C:\\WINDOWS'
}

fn test_to_wsl() {
	assert to_wslpath('C:\\WINDOWS')! == '/mnt/c/WINDOWS'
}
