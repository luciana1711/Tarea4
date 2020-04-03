Vagrant.configure("2") do |config|
 config.vm.define "ha" do |h|
   h.vm.box = "ubuntu/xenial64"
   h.vm.provision "shell", inline: "apt-get update && apt-get install -y haproxy"
   h.vm.network "private_network", ip: "192.168.205.15"
   h.vm.network "forwarded_port", guest: 80, host: 80 
   h.vm.provision "shell", inline: "echo ENABLED=1 >> /etc/default/haproxy"
   h.vm.provision "file", source: "./ha", destination: "/tmp/"
   h.vm.provision "shell", path: "movefile.sh"  
end
 config.vm.define "web_1" do |w|
   w.vm.provision "shell", path: "install-apache.sh"
   w.vm.box = "ubuntu/xenial64"
   w.vm.synced_folder "www_1", "/var/www/html"
   w.vm.network "forwarded_port", guest: 80, host: 8080
   w.vm.network "private_network", ip: "192.168.205.16"
 end
 config.vm.define "web_2" do |w|
   w.vm.provision "shell", path: "install-apache.sh"
   w.vm.box = "ubuntu/bionic64"
   w.vm.synced_folder "www_2", "/var/www/html"
   w.vm.network "forwarded_port", guest: 80, host: 8008
   w.vm.network "private_network", ip: "192.168.205.17"
 end
end

