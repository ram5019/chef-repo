#
# Cookbook:: learnchef
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file 'motd'  do
	path '/home/vagrant/motd.txt'
	content 'hello! Welcome to chef Roles'
	action :create	
end

