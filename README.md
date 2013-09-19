bioc-devel-debian7
==================

Bioconductor devel environment on Debian7
# Setup
```
vagrant init "Debian7" "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_debian-7.1.0_provisionerless.box"
```

Add a line in Vagrant file.
```
  config.vm.network :hostonly, "192.168.33.10"
```

Add ssh setting in ~/.ssh/config
```
Host 192.168.33.*
  HostName 192.168.33.10
  User vagrant
  Port 22
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile "/Users/#{username}/.vagrant.d/insecure_private_key"
  IdentitiesOnly yes
```
# Usage
```
vagrant up
ssh 192.168.33.10
```
