# Setup repos

# Percona
package { 'percona-release':
  ensure => 'installed',
  source => 'https://www.percona.com/redir/downloads/percona-release/redhat/latest/percona-release-0.1-3.noarch.rpm',
  provider => 'rpm'
}->
yumrepo { 'percona-release-noarch':
  enabled => 1,
}->
yumrepo { "percona-release-${architecture}":
  enabled => 1,
}

# Epel
package { 'epel-release':
  ensure => present,
}->
yumrepo { 'epel':
  enabled => 1,
}

# Packages
package { "mysql56":
  ensure => latest,
}
