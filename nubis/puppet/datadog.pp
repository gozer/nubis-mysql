#XXX: duplicated from base
class { 'datadog_agent':
  api_key => "%%DATADOG_API_KEY%%",
}

class { 'datadog_agent::integrations::mysql' :
 host        => 'localhost',
 user        => 'root',
 password    => '',
 replication => 1,
}
