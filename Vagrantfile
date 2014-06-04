# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
#  config.vm.define "app" do |cfg|
#    cfg.vm.network :forwarded_port, guest: 4243, host: 12345
# Not working to change the docker port, run 
# sudo launchctl unload /Library/LaunchDaemons/com.crashplan.engine.plist
# to stop Crashplan
#    cfg.vm.provider "docker" do |d|
#      d.image = "phusion/baseimage"
#      d.name = "app"
#      d.cmd     = ["/sbin/my_init", "--enable-insecure-key"]
#      d.has_ssh = true
#    end
#  end
   config.vm.define "testdb" do |app|
    app.vm.provider "docker" do |d|
      d.image = "paintedfox/postgresql"
      d.name = "testdb"
      d.env = {"DB"   => "testdb",
      	       "PASS" => "My0wnPassword",
      	       "USER" => "petclinic"}
	       # Use vagrant docker-logs to se that it works!!!
    end
   end
end