# -*- mode: ruby -*-
# vi: set ft=ruby :

##############################################################################
#                    setup your site's configuration                         #
##############################################################################

# the ip address where the vm can be accessed from the host
vm_ip                   = "172.14.13.77"
host_name               = "erz.lo"
host_aliases            =  %w(www.erz.lo)
vagrant_config_folder   = "/vagrant"

##############################################################################
#                        DO NOT CHANGE FROM HERE                             #
##############################################################################

require 'rbconfig'
WINDOWS = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/) ? true : false
this_dir = File.dirname(__FILE__) + "/"

Vagrant.configure("2") do |config|
    config.vm.define :ubuntu do |ubuntu|
        ubuntu.vm.box = "precise32"
        ubuntu.vm.box_url = "http://files.vagrantup.com/precise32.box"
        ubuntu.vm.synced_folder ".", "/vagrant", :nfs => !WINDOWS

        # whithout this symlinks can't be created on the shared folder
        ubuntu.vm.provider :virtualbox do |vb|
            vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        end

        ubuntu.vm.network :private_network, ip: vm_ip
        ubuntu.vm.hostname = host_name

        # provision using a shell script
        ubuntu.vm.provision :shell, :path => "vagrant/provision.sh"
    end
end
