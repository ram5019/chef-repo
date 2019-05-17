# libraries/default.rb
 module Site
 # This module contains helper functions, which are usefull for our recipes
 module Default
 # Determine the underlying init system
 # Returns 'systemd' or 'upstart'
 def get_file_path
 platform = node['platform']
 platform_version = node['platform_version']
 platform_family = node['platform_family']
 codename = node['lsb']['codename']

 if platform_family == 'rhel'
 return "/home/vagrant/libraryDemo.txt"
 end

 raise "Unsupported platform_version #{platform_version} for platform

#{platform} with platform_family #{platform_family}"

end
end
end

#mixin above module to the Recipe and Resource classes.
Chef::Recipe.include(Site::Default)
Chef::Resource.include(Site::Default)