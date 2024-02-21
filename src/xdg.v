module vos

// XDG Base Directory Specification
import os

// XDG_CONFIG_HOME use os.config_dir
// XDG_CACHE_HOME use os.cache_dir

pub fn xdg_data_home() string {
	// TODO: fix it when v bug is fixed
	dir := os.getenv_opt('XDG_DATA_HOME') or { os.join_path(os.home_dir(), '.local', 'share') }
	return dir
}

pub fn xdg_state_home() string {
	dir := os.getenv_opt('XDG_STATE_HOME') or { os.join_path(os.home_dir(), '.local', 'state') }
	return dir
}

pub fn xdg_data_dirs() []string {
	dirs := os.getenv_opt('XDG_DATA_DIRS') or { '/usr/local/share:/usr/share' }
	return dirs.split(':')
}

pub fn xdg_config_dirs() []string {
	dirs := os.getenv_opt('XDG_CONFIG_DIRS') or { '/etc/xdg' }
	return dirs.split(':')
}

@[deprecated: 'use user_bin_dir() instead']
pub fn user_exe_dir() string {
	return os.join_path(os.home_dir(), '.local', 'bin')
}

pub fn user_bin_dir() string {
	return os.join_path(os.home_dir(), '.local', 'bin')
}
