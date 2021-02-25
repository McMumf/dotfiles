# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-8.1"
  config.vm.network "forwarded_port", guest: 6969, host: 6969
  config.vm.network "forwarded_port", guest: 42069, host: 42069
  config.vm.synced_folder "workspace/", "/workspace"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/Vagrant_data"


  config.vm.provider "virtualbox" do |vb|
    vb.name = "dev"
    vb.memory = 2048
    vb.cpus = 2
  end


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    yum update -y
    yum -y install gcc gdb vim tar man man-pages curl openssl-devel bzip2-devel libffi-devel
    yum -y install glibc-devel.i686 libgcc.i686 glibc-devel.x86_64 libgcc.x86_64
    yum -y install glibc-static.i686 glibc-static.x86_64
    yum -y install nc
    yum -y install valgrind
    yum -y install strace
    yum -y install htop
    yum -y groupinstall "Development tools"
    yum -y install python3
  SHELL

  config.vm.provision "shell", path: "./install.sh"

end
