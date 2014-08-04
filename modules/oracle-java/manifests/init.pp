class oracle-java {
  class { 'apt': }
  include apt
  include oracle-java::ppa
  include oracle-java::install
}
