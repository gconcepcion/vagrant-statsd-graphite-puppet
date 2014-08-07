class graph-explorer {

  $ge_dir = "/opt/graph-explorer"
  $ge     = "/usr/local/bin/run_graph_explorer.py"

  file { ["/var/log/graph-explorer", "/opt/graph-explorer"]:
    ensure => "directory",
    owner  => "vagrant",
    group  => "vagrant",
 }
  file { ["/var/log/graph-explorer/graph-explorer.log"]:
    ensure => "present",
    owner  => "vagrant",
    group  => "vagrant",
 }

  file { "/opt/graph-explorer/config.cfg" :
    source  => "puppet:///modules/graph-explorer/config_example.cfg",
    owner   => "vagrant",
    group   => "vagrant",
    ensure  => present,
    require => [Package["graph-explorer"], File["/var/log/graph-explorer/graph-explorer.log"]],
 }

  package {
    graph-explorer :
      ensure   => installed,
      provider => 'pip',
 }
 exec { "run_graph_explorer":
   command => "$ge $ge_dir/config.cfg &",
   cwd => "$ge_dir",
   require => [ File["/opt/graph-explorer/config.cfg"], Package["graph-explorer"] ]
 }



}
