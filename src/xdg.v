module osv

import os

pub fn xdg_data_home() string {
	return os.getenv_opt('XDG_DATA_HOME') or { os.join_path(os.home_dir(), '.local', 'share') }
}

pub fn xdg_state_home() string {
	return os.getenv_opt('XDG_STATE_HOME') or { os.join_path(os.home_dir(), '.local', 'state') }
}

pub fn xdg_data_dirs() []string {
	dirs := os.getenv_opt('XDG_DATA_DIRS') or { '/usr/local/share:/usr/share' }
	return dirs.split(':')
}

pub fn xdg_config_dirs() []string {
	dirs := os.getenv_opt('XDG_CONFIG_DIRS') or { '/etc/xdg' }
	return dirs.split(':')
}

pub fn user_bin_dir() string {
	return os.join_path(os.home_dir(), '.local', 'bin')
}
