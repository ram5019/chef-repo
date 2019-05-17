# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

property :homepage, String, default: '<h1>Hello world!</h1>'

 action :create do
 package 'httpd' do
 package_name 'httpd'
 action :install
 end

 service 'httpd' do
 start_command "/usr/sbin/httpd -k start"
 action :start
 end

 file '/var/www/html/index.html' do
 content new_resource.homepage
 end
 end

 action :delete do
 service 'httpd' do
 stop_command "/usr/sbin/httpd -k stop"
 action :stop
 end
 package 'httpd' do
 package_name 'httpd'
 action :remove
 end
 end