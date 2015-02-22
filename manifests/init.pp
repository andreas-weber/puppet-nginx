# == Class: aw_nginx
#
# This module manages the webserver Nginx.
#
# === Parameters
#
# === Examples
#
#   include aw_nginx
#
#   class { 'aw_nginx': }
#
# === Authors
#
# Andreas Weber <code@andreas-weber.me>
#
# === Copyright
#
# Copyright 2015 Andreas Weber
#
class aw_nginx()
{
  package {
    [
      'nginx'
    ]:
      ensure  => 'latest'
  }

  service { 'nginx':
    ensure     => 'running',
    enable     => true,
    require    => Package['nginx']
  }
}
