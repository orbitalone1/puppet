class users { 
   user { 'sarju':
    ensure  => present,
    managehome => true,
    uid => 3000, 
    gid => 3000,
    groups => 'sysadmin',
    shell => '/bin/bash',
    password => '$6$olUFSvQu$dkDhEBQ1sieSfpC6VLaq38b8rvKEBS/EIkmTk4IdiX6Z/38fnJpu1n5qczA650/is2LUNM0aKxP4C0Q1B7Wel/',
  }
   user { 'ninjaadmin':
    ensure  => present,
    managehome => true,
    uid => 3001, 
    gid => 3001,
    groups => 'sysadmin',
    shell => '/bin/bash',
    password => '$6$olUFSvQu$dkDhEBQ1sieSfpC6VLaq38b8rvKEBS/EIkmTk4IdiX6Z/38fnJpu1n5qczA650/is2LUNM0aKxP4C0Q1B7Wel/',
  }
}

