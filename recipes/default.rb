#
# Cookbook Name:: elPrep
# Recipe:: source
#
# Copyright (c) 2015 Eagle Genomics, All Rights Reserved.

include_recipe 'build-essential'
include_recipe 'git'

##########################################################
# here for use by serverspec
magic_shell_environment 'elPrep_DIR' do
  value node['elPrep']['dir']
end

magic_shell_environment 'elPrep_VERSION' do
  value node['elPrep']['version']
end

magic_shell_environment 'elPrep_INSTALL' do
  value node['elPrep']['install_path']
end

##########################################################

remote_file "#{Chef::Config[:file_cache_path]}/#{node['elPrep']['filename']}" do
  source node['elPrep']['url']
  action :create_if_missing
end

execute 'extract tar ball to install directory' do
  command "tar jxvf #{Chef::Config[:file_cache_path]}/#{node['elPrep']['filename']} -C #{node['elPrep']['install_path']}"
  cwd node['elPrep']['install_path']
  not_if { ::File.exist?("#{node['elPrep']['install_path']}/#{node['elPrep']['dirname']}") }
end

# this symlinks every executable in the install subdirectory to the top of the directory tree
# so that they are in the PATH
execute "find #{node['elPrep']['dir']} -maxdepth 1 -name 'elprep*' -executable -type f -exec ln -sf {} . \\;" do
  cwd node['elPrep']['bin_path']
end

##########################################################
##########################################################
