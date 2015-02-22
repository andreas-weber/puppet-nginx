# = Class: aw_nginx::params
#
# This class defines default parameters used by the main module class satis.
#
# == Variables:
#
# Refer to aw_nginx class for the variables defined here.
#
# == Examples:
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes.
#
# === Authors
#
# Andreas Weber <code@andreas-weber.me>
#
# === Copyright
#
# Copyright 2015 Andreas Weber
#
class aw_nginx::params
{
  $config_path = '/etc/nginx/conf.d'
}
