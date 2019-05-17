#
# Cookbook:: jdk
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
include_recipe "tar::default" #Include recipe

tar_extract '/vagrant/jdk-11.0.3_linux-x64_bin.tar.gz' do
 action :extract_local
 target_dir '/home/vagrant/'
 creates '/home/vagrant/jdk-11.0.3/'
 end

