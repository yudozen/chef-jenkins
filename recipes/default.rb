#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

yum_package "java-1.7.0-openjdk" do
	arch "x86_64"
	action :install
end

yum_key "RPM-GPG-KEY-Jenkins" do
	url "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
	action :add
end

yum_repository "Jenkins" do
	description "Jenkins"
	url "http://pkg.jenkins-ci.org/redhat"
	key "RPM-GPG-KEY-Jenkins"
	action :add
end

package "jenkins" do
	version "1.496-1.1"
	action :install
end


