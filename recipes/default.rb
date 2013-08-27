#
# Cookbook Name:: create-user
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#openssl passwd -1 "password"
user node['create-user']['user'] do
	home node['create-user']['home']
	shell node['create-user']['shell']
	password node['create-user']['password']
	supports :manage_home => true, :non_unique => false
end