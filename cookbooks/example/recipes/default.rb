# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node['example']['name']}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/recipes.html
example_managehttpd 'httpd' do
 homepage '<h1>Welcome to the Example Co. website!</h1>'
 action :create
 end