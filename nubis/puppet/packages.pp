# Setup repos

# Percona
package { 'percona-release':
  ensure => 'installed',
  source => 'https://www.percona.com/redir/downloads/percona-release/redhat/latest/percona-release-0.1-3.noarch.rpm',
  provider => 'rpm'
}->
yumrepo { 'percona-release-noarch':
  enabled => true,
}->
yumrepo { "percona-release-${architecture}":
  enabled => true,
}

# Epel
package { 'epel-release':
  ensure => present,
}->
yumrepo { 'epel':
  enabled => true,
}

# Packages
package { "mysql56":
  ensure => latest,
}
