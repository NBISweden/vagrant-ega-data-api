Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.ssh.insert_key = true
  config.vm.synced_folder "./scripts", "/home/vagrant/data-api", create: true, group: "vagrant", owner: "vagrant"
end
