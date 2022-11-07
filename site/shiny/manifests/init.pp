class minecraft {
   file {"README":
    ensure => file,
    content => "test\n",  
  }
}
