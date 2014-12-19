node 'basenode' {

   include users
   include groups
   include agentpuppetconf
   include ssh
   include services
   include ntp

}

#node 'webserver' {
#   include xxx
#}

node 'precise64.blinkbox.local' inherits basenode {
}
node 'precise64.lan' inherits basenode {
}
node 'debby.blinkbox.local' {
  include redis
}
node 'debslave.blinkbox.local' {
  include redis
}
