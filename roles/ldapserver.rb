name "ldapserver"
description "LDAP Servers"
run_list "recipe[openldap], recipe[ldapconfig]"
default_attributes({
	"company" => "My Company"
})