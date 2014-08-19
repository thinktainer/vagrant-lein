node default {
  #include oracle-java
  #include dev
  exec {'apt-update':
    command => 'apt-get update',
    path => '/usr/bin'
  }
  include dropb
}

Exec["apt-update"] -> Package <| |>
