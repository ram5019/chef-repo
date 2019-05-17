#
# Cookbook:: learnchef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd_web' do
	package_name 'httpd' 
	action :install
end

cookbook_file  'saveMyInfoHTML' do
	source 'myinfo.html'
	path '/var/www/html/myinfo.html'
	action :create	
end

template '/etc/httpd/conf/httpd.conf' do
	source 'httpd.conf.erb'
	action :create
end

service 'httpd_stop' do 
	service_name 'httpd'
	action :stop
	start_command '/usr/sbin/httpd -k stop'
end

service 'httpd_service' do 
	service_name 'httpd'
	action :start
	start_command '/usr/sbin/httpd -k start'
end

