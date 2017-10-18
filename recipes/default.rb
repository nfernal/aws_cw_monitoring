#
# Cookbook:: aws_cw_monitoring
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'cron'
include_recipe 'poise-python'


node['aws_cw_monitoring']['pip']['packages'].each do |pkg|
  python_package pkg['pkg_name'] do
    version pkg['pkg_version']
  end
end

options = ['--from-cron'] + node['aws_cw_monitoring']['options']

cron 'cloudwatch_monitoring' do
  minute node['aws_cw_monitoring']['cron_minutes']
  command %(/usr/bin/mon-put-instance-stats.py #{options.join(' ')} || logger -t cloudwatch-mon "status=failed exit_code=$?")
end
