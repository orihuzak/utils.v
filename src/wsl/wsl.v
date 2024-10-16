module wsl

import os

pub fn getwinenv(env string) !string {
	res := os.execute_opt('cmd.exe /c echo %${env}% 2>/dev/null')!
	// return res.output
	return res.output.trim_space_right()
}

pub fn to_wslpath(winpath string) !string {
	if !os.exists_in_system_path('wslpath') {
		return error('wslpath is required.')
	}
	res := os.execute('wslpath -au "${winpath}"')
	if res.exit_code != 0 {
		return error('os.execute ${res.output}')
	}
	return res.output.trim_space_right()
}
