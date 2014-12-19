#redis service
class redis-master {
file {'/etc/redis/redis.conf':
  ensure => file,
  source => 'puppet:///modules/redis/master.redis.conf',
  notify => Service['redis-server'],
}
package { 'redis-server':
  ensure  => installed,
  #require => Service['redis-server'],
}
service { 'redis-server':
  require => Package ['redis-server'],
#  require => File ['redis-server'],
  ensure => "running",
}
}
