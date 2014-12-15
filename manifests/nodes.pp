node 'basenode' {

   include users
   include groups
   include agentpuppetconf
   include ssh
   include services

}

#node 'webserver' {
#   include xxx
#}

node 'precise64.lan' inherits basenode {
}
