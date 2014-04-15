case node["platform"]
when "centos"
	default["ldap_server_package"] = "openldap-servers"
	default["ldap_client_package"] = "openldap-clients"
	default["nss_pam_package"] = "nss-pam-ldapd"
	default["pam_package"] = "pam_ldap"
	default["service_name"] = "slapd"
end