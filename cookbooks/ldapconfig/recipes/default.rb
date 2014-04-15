#
# Cookbook Name:: ldapconfig
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#1. Copy /usr/share/openldap-servers/slapd.conf.obsolete to /etc/openldap/slapd.conf
file "/etc/openldap/slapd.conf" do
  owner 'root'
  group 'root'
  mode 0644
  content ::File.open("/usr/share/openldap-servers/slapd.conf.obsolete").read
  action :create
end
#2. Edit slapd.conf from template
template "/etc/openldap/slapd.conf" do
	source "slapd.conf.erb"
	mode 0644
	owner "root"
	group "root"
end
#3. Convert slapd.conf to cn=config
#3.1 Execute mv /etc/openldap/slapd.d /etc/openldap/slapd.d.bak
execute "move-slapd.d" do
  command "mv /etc/openldap/slapd.d /etc/openldap/slapd.d.bak"
  creates "/etc/openldap/slapd.d.bak"
  action :run
end

