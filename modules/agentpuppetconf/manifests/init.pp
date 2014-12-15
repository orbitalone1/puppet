class agentpuppetconf {
file {'/etc/puppet/puppet.conf':
   ensure => file,
   source => 'puppet:///modules/agentpuppetconf/puppet.conf', 
   notify => Service['puppet'],
}
}
