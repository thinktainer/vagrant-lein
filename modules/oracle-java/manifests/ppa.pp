class oracle-java::ppa {
  apt_key { 'webupd8team':
    ensure => present,
    id => 'EEA14886'

  }
  apt::ppa { 'ppa:webupd8team/java': }
}
