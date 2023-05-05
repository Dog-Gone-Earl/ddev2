Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "uwbbi/bionic-arm64"https://github.com/Dog-Gone-Earl/ddev2/blob/main/Vagrantfile
  config.vm.provider "vmware_desktop" do |v|
    v.ssh_info_public = true
    v.gui = true
    v.linked_clone = false
    v.vmx["ethernet0.virtualdev"] = "vmxnet3"
    
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
  end
  #sudo apt-get update
  #yes y | sudo apt-get upgrade
  config.vm.provision "shell", inline: "mkdir ~/data"
  config.vm.provision "file", source: "~/setup.sh, destination: "/home/vagrant/data"
  
end
