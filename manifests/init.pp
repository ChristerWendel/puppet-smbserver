# == Class: smbserver
#
# A module to handle samba
#
# === Parameters
# ["version"]
#   The package version to install
#
# ['shares']
#   An array of hashes with shares
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class smbserver (
  $version = 'present',
  $shares = [ { name => 'home', path => '/home',} ],
  $enable = true,
  $start = true
  )  {
    class{'smbserver::install': } ->
    class{'smbserver::configure': } ~>
    class{'smbserver::service': } ->
    Class['smbserver']
  }
