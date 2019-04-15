Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", inline: 'sudo su vagrant -c "cd /vagrant; sudo bash maintenance/install_deps.sh"', keep_color: true
  config.vm.provision "shell", inline: 'sudo su vagrant -c "cd /vagrant; sudo bash maintenance/install_compiler_deps.sh"', keep_color: true
  config.vm.provision "shell", inline: 'sudo su vagrant -c "cd /vagrant; sudo bash maintenance/setup_python.sh"', keep_color: true
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |v|
    v.customize ['modifyvm', :id, '--nictype1', 'virtio']
    v.memory = 4096
  end
end
