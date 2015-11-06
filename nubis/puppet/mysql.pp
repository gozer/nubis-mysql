file { '/etc/nubis.d/00-mysql-bootstrap':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0755',
    source  => 'puppet:///nubis/files/mysql-bootstrap',
}

file { '/usr/local/bin/mysql-failover':
  ensure => file,
  owner  => root,
  group  => root,
  mode   => '0755',
  source  => 'puppet:///nubis/files/mysql-failover',
}

