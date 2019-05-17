#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'tomcat' do 
	action :install	
end


package %w(tomcat-webapps tomcat-admin-webapps tomcat-docs-webapp tomcat-javadoc) do
	action :install
end


template 'tom_temp' do	
	path '/usr/share/tomcat/conf/tomcat.conf'
	source 'tomcat.conf.erb'
	action :create
end

cookbook_file 'tom_file' do	
	path '/usr/share/tomcat/conf/tomcat-users.xml'
	source 'tomcat-users.xml'
	action :create
end

service 'tomcat' do
	service_name 'tomcat'
	action [:enable, :start]
end
