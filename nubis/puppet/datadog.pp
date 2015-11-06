#XXX: duplicated from base
class { 'datadog_agent':
  api_key => "%%DATADOG_API_KEY%%",
}

class { 'datadog_agent::integrations::process':
  processes   => [
      {
          'name'          => 'mysqld',
          'search_string' => ['/usr/libexec/mysql56/mysqld'],
          'exact_match'   => true,
      },
  ],
}

