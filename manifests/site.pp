node default{
  file {'/root/readme.txt':
    ensure => file,
    content =>"This is a test ${ipaddress}\n",
  }
}

node 'master.puppet.vm'{
  include role::master_server
}
