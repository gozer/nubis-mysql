file { '/etc/nubis.d/00-mysql-bootstrap":
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0755',
    source  => 'puppet:///nubis/files/mysql-bootstrap',
}
