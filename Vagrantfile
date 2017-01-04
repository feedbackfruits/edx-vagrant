Vagrant.configure(2) do |config|
  config.env.enable
  config.vm.hostname = 'EdX'

  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = '~/.ssh/id_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = 'https://github.com/devopsgroup-io/vagrant-digitalocean/raw/master/box/digital_ocean.box'
    provider.token = ENV['DIGITAL_OCEAN_TOKEN']
    provider.image = 'ubuntu-12-04-x64'
    provider.region = 'ams2'
    provider.size = '4gb'
    provider.ssh_key_name = ENV['DIGITAL_OCEAN_SSH_KEY']
  end

  config.vm.provision 'shell', inline: <<-SHELL
    sudo bash /vagrant/provision.sh
  SHELL
end
