#roles/base-ubuntu.rb

name "base-ubuntu"
description "Base role for ubuntu servers"
run_list "recipe[apt]"