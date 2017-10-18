default['aws_cw_monitoring']['cron_minutes'] = '5' # use "*" if you want to run every minute
default['aws_cw_monitoring']['options'] = %w(
  --disk-space-util
  --disk-path=/
  --disk-space-used
  --disk-space-avail
  --swap-util
  --swap-used
  --mem-util
  --mem-used
  --mem-avail
  --loadavg-percpu
  --loadavg
)
default['aws_cw_monitoring']['pip']['packages'] = [
  {'pkg_name' => 'boto', 'pkg_version' => '2.48.0'},
  {'pkg_name' => 'cloudwatchmon', 'pkg_version' => '2.0.6'}
]
