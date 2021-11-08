module utils

fn test_is_wsl() {
	assert is_wsl() == true
}

fn test_choose_execute() {
	exec := choose_execute() or { panic(err) }
	println(exec)
}


