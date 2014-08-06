# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "thinktainer/trusty64_vmware-puppet"
  config.vm.box_download_checksum = "862d5494e97d59708e6a813fdce1bf86c8c957efd887408fc68a9de75e7e520f"
  config.vm.box_download_checksum_type = "sha256"
  config.vm.provision "shell", inline: 
    "puppet module install puppetlabs-apt"
  config.ssh.forward_agent = true
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = ""
    puppet.module_path = "modules"
    puppet.manifest_file = "modules/site.pp"
    #puppet.options = "--verbose --debug"
  end
  config.vm.provider "vmware_fusion" do |vmware|
  end
end
