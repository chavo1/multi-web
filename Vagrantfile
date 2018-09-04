Vagrant.configure("2") do |config|
  
 (1..2).each do |i|
 
  config.vm.define vm_name="web0#{i}" do |node|
  config.vm.synced_folder ".", "/vagrant", disabled: false
   node.vm.box = "chavo1/xenial"
   node.vm.network "private_network", ip: "192.168.56.#{50+i}"
   node.vm.hostname = vm_name
   node.vm.network "forwarded_port", guest: 80, host: 8080 +i, auto_correct: "true"
   node.vm.provision :shell, path: "scripts/provision.sh" 
    end
  end
end
