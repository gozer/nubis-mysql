file { '/usr/local/bin/mysql-snapshot':
  ensure => file,
  owner  => root,
  group  => root,
  mode   => '0755',
  source  => 'puppet:///nubis/files/mysql-snapshot',
}->
cron { 'mysql-snapshot':
  ensure => 'present',
  command => "/usr/local/bin/mysql-snapshot 2>&1 | logger -t mysql-snapshot",
  hour => '3',
  minute => '15',
  user => 'root',
  environment => [
    "PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/opt/aws/bin",
  ],
}

