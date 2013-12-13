#
# Cookbook Name:: balanced-builder
# Recipe:: default
#
# Copyright (C) 2013 balanced
# 
# All rights reserved - Do Not Redistribute
#
%w(python-virtualenv python-dev build-essential libpq-dev cython).each do |package_name|
  package package_name do
    action :install
  end
end

cookbook_file "/etc/sudoers.d/deploy" do
  source "etc/sudoers.d/deploy"
  owner "root"
  group "root"
  mode "0440"
  action :create_if_missing
end
