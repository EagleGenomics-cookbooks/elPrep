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
  value node['elPrep']['install']
end

##########################################################

git node['elPrep']['dir'] do
  repository 'https://github.com/ExaScience/elprep.git'
  revision node['elPrep']['version']
  action :sync
end

# this symlinks every executable in the install subdirectory to the top of the directory tree
# so that they are in the PATH
execute "find #{node['elPrep']['dir']} -maxdepth 1 -name 'elprep*' -executable -type f -exec ln -s {} . \\;" do
  cwd node['elPrep']['install'] + '/bin'
end

##########################################################
##########################################################
