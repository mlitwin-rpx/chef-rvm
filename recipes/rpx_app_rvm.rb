# cookbook: rvm
# recipe: rpx_app_rvm.rb

#include_recipe "rvm::system"
include_recipe "rvm::user"

#package "libcurl4-openssl-dev" do
#  action :install
#end

#execute "passenger-install-nginx-module" do
#  command "passenger-install-nginx-module --auto --auto-download --prefix=/opt/nginx"
#  action :run
#end
