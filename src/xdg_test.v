module vos

import os

fn test_xdg_dirs() {
	assert os.config_dir()! == os.join_path(os.home_dir(), '.config')
	assert os.cache_dir() == os.join_path(os.home_dir(), '.cache')
	assert xdg_data_home() == os.join_path(os.home_dir(), '.local', 'share')
	assert xdg_state_home() == os.join_path(os.home_dir(), '.local', 'state')
	assert xdg_data_dirs() == ['/usr/local/share', '/usr/share']
	assert xdg_config_dirs() == ['/etc/xdg']
	assert user_bin_dir() == os.join_path(os.home_dir(), '.local', 'bin')
}
