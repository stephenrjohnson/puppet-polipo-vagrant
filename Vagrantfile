# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :proxy do |box_config|
   config.vm.provider  :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 256]
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--name", 'proxy.puppetlabs.vm']
    end
    box_config.vm.box = 'debian-607'
    box_config.vm.hostname  = 'proxy.puppetlabs.vm'

    box_config.vm.network :private_network, ip: '172.16.0.2'
    box_config.vm.provision :puppet do | puppet|
        puppet.manifest_file = 'site.pp'
        puppet.manifests_path = 'manifests'
        puppet.module_path = 'modules'
    end
  end
end
