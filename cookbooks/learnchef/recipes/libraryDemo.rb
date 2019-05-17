#
# Cookbook:: learnchef
# Recipe:: libraryDemo
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file 'libDemo' do
path get_file_path
content 'Hello! Welcome to Chef Libraries'
action :create
end