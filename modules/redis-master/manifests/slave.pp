#redis service
class redis-slave {
file {'/etc/redis/redis.conf':
  ensure => file,
  source => 'puppet:///modules/redis/slave.redis.conf',
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
