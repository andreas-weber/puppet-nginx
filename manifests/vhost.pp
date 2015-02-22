# == Define: aw_nginx::vhost
#
# This resource manages the creation of vhosts.
#
# === Parameters
#
# [*vhost*]
#   The source path to the vhost configuration file.
#
# === Examples
#
#  aw_nginx::vhost{ 'example':
#    template_vhost => 'puppet:///modules/aw_nginx/vhost-example.conf'
#  }
#
# === Authors
#
# Andreas Weber <code@andreas-weber.me>
#
# === Copyright
#
# Copyright 2015 Andreas Weber
#
define aw_nginx::vhost ($template_vhost)
{
  include aw_nginx
  include aw_nginx::params

  file { "${aw_nginx::params::config_path}/${name}.conf":
    owner   => '0',
    group   => '0',
    mode    => '0755',
    content => template($template_vhost),
    notify  => Service['nginx']
  }
}
