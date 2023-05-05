Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "uwbbi/bionic-arm64"
  config.vm.provider "vmware_desktop" do |v|
    v.ssh_info_public = true
    v.gui = true
    v.linked_clone = false
    v.vmx["ethernet0.virtualdev"] = "vmxnet3"
    end 
  config.vm.synced_folder "./shared", "/home/vagrant/shared", create: true
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
  #sudo apt-get update
  #yes y | sudo apt-get upgrade
  config.vm.provision :file, source: '~/setup.sh', destination: '~/setup.sh'

  SHELL
end
