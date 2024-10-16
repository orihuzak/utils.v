module wsl

fn test_getwinenv() {
	assert getwinenv('SYSTEMROOT')! == 'C:\\WINDOWS'
}

fn test_to_wsl() {
	winpath := getwinenv('SYSTEMROOT')!
	assert to_wslpath(winpath)! == '/mnt/c/WINDOWS'
}
