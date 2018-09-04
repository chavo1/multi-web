Vagrant.configure("2") do |config|
  
  config.vm.provision :shell, path: "scripts/provision.sh"
  
  config.vm.define "master" do |subconfig|
    subconfig.vm.network "forwarded_port", guest: 80, host: 8081, auto_correct: "true"
    subconfig.vm.box = "chavo1/xenial"
    subconfig.vm.hostname = "web01"
    subconfig.vm.network :private_network, ip: "192.168.56.56"
  end

  config.vm.define "slave" do |subconfig|
    subconfig.vm.network "forwarded_port", guest: 80, host: 8082, auto_correct: "true"
    subconfig.vm.box = "chavo1/xenial"
    subconfig.vm.hostname = "web02"
    subconfig.vm.network :private_network, ip: "192.168.56.57"
  end
  
end
