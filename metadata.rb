maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Manages system-wide and per-user RVMs and manages installed Rubies. Several lightweight resources and providers (LWRP) are also defined.Installs and manages RVM. Includes several LWRPs."
long_description "Please refer to README.md (it's long)."
version          "0.8.7"

recipe "rvm",                 "Installs the RVM gem and initializes Chef to use the Lightweight Resources and Providers (LWRPs). Use this recipe explicitly if you only want access to the LWRPs provided."
recipe "rvm::system_install", "Installs the RVM codebase system-wide (that is, into /usr/local/rvm). This recipe includes *default*. Use this recipe by itself if you want RVM installed system-wide but want to handle installing Rubies, invoking LWRPs, etc.."
recipe "rvm::system",         "Installs the RVM codebase system-wide (that is, into /usr/local/rvm) and installs Rubies, global gems, and specific gems driven off attribute metadata. This recipe includes *default* and *system_install*. Use this recipe by itself if you want RVM system-wide with Rubies installed, etc."
recipe "rvm::user_install", "Installs the RVM codebase for a list of users (selected from the node['rvm']['user_installs'] hash). This recipe includes *default*. Use this recipe by itself if you want RVM installed for specific users in isolation but want each user to handle installing Rubies, invoking LWRPs, etc."
recipe "rvm:user",            "Installs the RVM codebase for a list of users (selected from the node['rvm']['user_installs'] hash) and installs Rubies, global gems, and specific gems driven off attribute metadata. This recipe includes *default* and *user_install*. Use this recipe by itself if you want RVM installed for specific users in isolation with Rubies installed, etc."
recipe "rvm::vagrant",      "An optional recipe to help if running in a Vagrant virtual machine"
recipe "rvm::gem_package",  "An experimental recipe that patches the gem_package resource"
recipe "rvm::rpx_app_rvm",  "RPX RVM configuration"
#recipe "rvm::rpx_app_rvm_vagrant",  "RPX RVM configuration for vagrant" # not needed in R

%w{ debian ubuntu suse centos amazon redhat fedora mac_os_x }.each do |os|
  supports os
end

# if using jruby, java is required on system
recommends  "java"
