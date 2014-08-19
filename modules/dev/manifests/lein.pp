class dev::lein {

  file { '/home/vagrant/bin':
    ensure => directory,
    owner => "vagrant",
    group => "vagrant",
    mode => 0750
  }

  exec { 'retrieve_leiningen':
    command => "/usr/bin/wget -q https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -O /home/vagrant/bin/lein",
    creates => "/home/vagrant/bin/lein",
    require => File["/home/vagrant/bin"]
  }

  file { '/home/vagrant/bin/lein':
    mode => 0755,
    owner => "vagrant",
    group => "vagrant",
    require => Exec["retrieve_leiningen"]
  }

  exec {'run_lein':
    command => "lein",
    user => "vagrant",
    group => "vagrant",
    path => ["/home/vagrant/bin", "/usr/bin", "/bin"],
    cwd => "/home/vagrant/bin",
    environment => ["HOME=/home/vagrant"],
    creates => "/home/vagrant/.lein",
    require => File["/home/vagrant/bin/lein"]
  }

}
