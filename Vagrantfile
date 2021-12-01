Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"
  #config.vm.synced_folder "~/Documents/starter-code/", "/srv/website"
  #config.vm.provision "shell", path:"environment/provision.sh"

  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.56.0/21"
    app.vm.synced_folder "~/Documents/two-at-the-same-time/", "/srv/website"
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.56.0/21"
  end
end
