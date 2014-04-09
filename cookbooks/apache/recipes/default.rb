#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#chef-repo/cookbooks/recipies/default.rb
package_name = "apache2"
service_name = "apache2"
document_root = "/var/www/"

if node["platform"] == "centos"
	package_name = "httpd"
	service_name = "httpd"
	document_root = "/var/www/html"
end

#1. Install apache2
package package_name do
	action :install
end
#2.Start the service
#3. Make sure the service starts on reboot
service service_name do
	action [:start, :enable]
end
#4.write our home page
# cookbook_file "#{document_root}/index.html" do
# 	source "index.html"
# 	mode "0644"
# end

template "#{document_root}/index.html" do
	source "index.html.erb"
	mode "0644"
end