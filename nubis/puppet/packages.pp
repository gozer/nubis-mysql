# Setup repos

# Percona
package { 'percona-release':
  ensure => 'installed',
  source => 'https://www.percona.com/redir/downloads/percona-release/redhat/latest/percona-release-0.1-3.noarch.rpm',
  provider => 'rpm'
}

# Epel
package { 'epel-release':
  ensure => present,
}->
yumrepo { 'epel':
  enabled => 1,
}

# Packages
package { [
  "mysql56",
  "mysql56-server",
  ]:
  ensure => latest,
}

package { [
  "perl-App-cpanminus",
  "perl-Test-Simple",
  "dstat",
  ]:
  ensure => latest,
}

package { "mysql-mmm":
  ensure => latest,
  require => [
    Yumrepo['epel'],
  ],
}

package {"percona-xtrabackup":
  ensure => latest,
  require => [
    Yumrepo['epel'],
    Package['percona-release'],
    Package['mysql56-server'],
  ],
}
