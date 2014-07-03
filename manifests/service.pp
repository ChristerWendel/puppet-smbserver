# == Class: smbserver::service
#
# Controls the samba service
class smbserver::service {
  $ensure = $smbserver::start ? {true => running, default => stopped}

  service { 'smbd':
    ensure => $ensure,
    enable => $smbserver::enable,
  }
}
