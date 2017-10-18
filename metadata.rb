name 'aws_cw_monitoring'
maintainer 'Jonathan Simon'
maintainer_email 'nfernal13@outlook.com'
license 'All Rights Reserved'
description 'Installs/Configures aws_cw_monitoring'
long_description 'Installs/Configures aws_cw_monitoring'
version '0.1.0'
chef_version '>= 12.21.14' if respond_to?(:chef_version)
issues_url 'https://github.com/nfernal/aws_cw_monitoring/issues'
source_url 'https://github.com/nfernal/aws_cw_monitoring'

depends 'cron'
depends 'poise-python'
