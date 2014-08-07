# statsd + graphite + graphite-explorer dashboard on the fly 
Provision a virtual machine with vagrant and puppet to play around with statsd and graphite via the graph-explorer dashboard

This is a fork of https://github.com/Jimdo/vagrant-statsd-graphite-puppet.git
## Details:

 * debian package for statsd (github.com/etsy) included
 * graph-explorer: http://localhost:8081
 * port forwardings enabled
 * graphite: http://localhost:8080/
 * statsd: 8125:udp

## Installation

```
git clone https://github.com/gconcepcion/vagrant-statsd-graphite-puppet.git
cd vagrant-graph-explorer
vagrant up
open http://localhost:8080/
```

The default account is admin/admin

## Contributors

Created by gconcepcion


Contributors
* jimdo   https://github.com/Jimdo
* liuggio https://github.com/liuggio
