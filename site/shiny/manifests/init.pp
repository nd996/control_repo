class shiny {
   file {"README":
    ensure => file,
    content => "test\n",  
  }
  package {'r-base':
    ensure => present,
  }
}
