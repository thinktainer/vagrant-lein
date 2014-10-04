class fdbclient {
    $package_path = "/tmp/foundationdb-clients_2.0.9.1_amd64.deb"
    exec { 'download-package':
      command => "wget -O $package_path https://foundationdb.com/downloads/f-oaoxuuixofbxobf/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/2.0.9/foundationdb-clients_2.0.9-1_amd64.deb",
      path => '/usr/bin',
      creates => "/tmp/foundationdb-clients_2.0.9.1_amd64.deb"
    }

    package { 'foundationdb-clients':
      ensure => present,
      provider => dpkg,
      source => $package_path,
      require => Exec['download-package']
    }
}
