# cookbook: rvm
# recipe: rpx_app_rvm_vagrant.rb

# create rpx user
execute "useradd rpx" do
  command "useradd -d /opt/rpx/ -m -s /bin/bash rpx"
  not_if "grep rpx /etc/passwd"
end

#user "rpx" do
#  comment "RPX Application User"
#  home "/opt/rpx"
#  shell "/bin/bash"
#end

include_recipe "rvm::rpx_app_rvm"
include_recipe "rvm::vagrant"

#package "libcurl4-openssl-dev" do
#  action :install
#end

#execute "passenger-install-nginx-module" do
#  command "passenger-install-nginx-module --auto --auto-download --prefix=/opt/nginx"
#  action :run
#end
