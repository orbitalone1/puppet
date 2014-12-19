#Services class
class services {
  service {'ssh':
  ensure => running,
  }
  service {'puppet':
  ensure => running,
  }
}
