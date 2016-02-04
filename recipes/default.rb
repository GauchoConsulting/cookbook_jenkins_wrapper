#
# Cookbook Name:: jenkins_wrapper
# Recipe:: default
#
# Copyright (C) 2016 John Turner
#
# All rights reserved - Do Not Redistribute
#

node['jenkins']['plugins'].each do |plugin|
  jenkins_plugin plugin.name do
    version plugin.version
    install_deps plugin.install_deps
  end
end

jenkins_command 'safe-restart'
