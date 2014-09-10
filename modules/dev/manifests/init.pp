class dev {
  include dev::packages
  include dev::lein
  ohmyzsh::install { 'vagrant': }
}

