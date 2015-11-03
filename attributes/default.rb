default['elPrep']['version'] = '2.35'
default['elPrep']['install_path'] = '/usr/local'
default['elPrep']['bin_path'] = '/usr/local/bin'
default['elPrep']['dirname'] = "elprep-v#{node['elPrep']['version']}"
default['elPrep']['dir'] = default['elPrep']['install_path'] + '/' + default['elPrep']['dirname']
default['elPrep']['filename'] = "#{node['elPrep']['dirname']}.tar.bz2"
default['elPrep']['url'] = "https://github.com/ExaScience/elprep/releases/download/#{node['elPrep']['version']}/#{node['elPrep']['filename']}"
