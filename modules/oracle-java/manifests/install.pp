class oracle-java::install {
  exec { "echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections":
    path => "/bin"
    }


  package {'oracle-java6-installer':
    ensure => present
  }

  package { 'oracle-java6-set-default':
    ensure => present
  }
  Apt::Ppa ['ppa:webupd8team/java'] -> Package['oracle-java6-installer', 'oracle-java6-set-default']
}

