VAGRANTFILE_API_VERSION = "2"

servers = [
  {
    :hostname => "testvm.local",
    :ip => "192.168.56.10",
    :box => "ubuntu/xenial64",
    :ram => 4096,
    :cpu => 4
  }
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  servers.each_with_index do |machine, index|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.ssh.insert_key = false
      node.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", machine[:ram]]
      end
    end
  end
end
