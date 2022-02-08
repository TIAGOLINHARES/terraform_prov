Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/bionic64"
	
	
	
	config.vm.provider "virtualbox" do |v|
			v.memory = 1024
			v.cpus = 1
			
			
			config.vm.box_download_insecure = true
	
		end
		
		
		config.vm.define "vm_bases" do |vm_bases|
		
		
        vm_bases.vm.network "public_network", ip: "192.168.10.10"
		vm_bases.vm.provision "shell",
            inline: "cat /vagrant/configs/id_bionic.pub >> .ssh/authorized_keys"
    
		vm_bases.vm.provision "shell",
				inline: "apt-get update && \
						 apt-get install python3 -y"
		
		vm_bases.vm.provision "shell",
				inline: "cp /vagrant/terraform /bin "
				
		vm_bases.vm.provision "shell",
				inline: "apt-get update && \
						 apt-get install unzip -y"
					 
		vm_bases.vm.provision "shell",
				inline: 
                     
					 "curl  https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o ""awscliv2.zip"" && \
					 unzip awscliv2.zip && \
					 ./aws/install"
		
		vm_bases.vm.provision "shell",
				inline: "cp /vagrant/configs/terraform/main.tf /home/vagrant "				 
		
		
		end
		
		
			
			
			
			
		
		
	
		

end	




