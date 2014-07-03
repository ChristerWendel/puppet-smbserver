# == Class: smbserver::install
#
# Installs the samba package
class smbserver::install {
  package { 'samba':
    ensure => $smbserver::version,
  }
}
