# == Class: smbserver::configure
#
# Configures the samba server
class smbserver::configure {
  $shares = $smbserver::shares

  file { '/etc/samba/smb.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('smbserver/smb.conf'),
  }
}
