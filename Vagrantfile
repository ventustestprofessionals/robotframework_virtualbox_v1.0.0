# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #desktop
  config.vm.box = "skaary/LinuxMint21"

  config.vm.network "public_network"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  config.vm.network "forwarded_port", guest: 8270, host: 8270
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Mint_cinnamon_robotframework"
    vb.memory = "4096"
    vb.cpus = 4
  end
  
  config.vm.synced_folder ".", "/vagrantsync"

  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end
end
