class dropb {

  package { 'lxde':
    ensure => present
  }

  package { 'python-gtk2':
    ensure => present,
    require => Package["firefox"]
  }

  package { 'firefox':
    ensure => present,
    require => Package["lxde"]
  }
}
