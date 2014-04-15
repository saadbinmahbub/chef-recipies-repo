#
# Cookbook Name:: openldap
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#######INSTALL ALL LDAP PACKAGES#######
package node["ldap_server_package"] do
	action :install
end

package node["ldap_client_package"] do
	action :install
end

yum_package node["nss_pam_package"] do
	action :install
	arch "x86_64"
end

yum_package node["pam_package"] do
	action :install
	arch "x86_64"
end
#####FINISH LDAP PACKAGES######