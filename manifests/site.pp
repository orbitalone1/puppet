node 'precise64.lan' {

   include users
   include groups
   include agentpuppetconf
   include ssh
   include services

}
