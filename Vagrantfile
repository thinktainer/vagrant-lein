# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty"
  config.vm.box_url = "file:///Users/martinschinz/Documents/projects/bento/builds/vmware/thinktainer_ubuntu-14.04_puppet.box"

  config.vm.provision "shell", inline: "puppet module install puppetlabs-apt"
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = ""
    puppet.module_path = "modules"
    puppet.manifest_file = "modules/site.pp"
    puppet.options = "--verbose --debug"
  end
  config.vm.provider "vmware_fusion" do |vmware|
  end
end
