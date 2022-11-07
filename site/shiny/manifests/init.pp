class shiny {
   file {"README":
    ensure => file,
    content => "test\n",  
  }
}
