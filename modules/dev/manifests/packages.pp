class dev::packages {

  package { 'tmux':
    ensure => present
  }

  package { 'vim':
    ensure => present
  }

  package { 'git':
    ensure => present
  }

  package { 'zsh':
    ensure => present
  }
}
