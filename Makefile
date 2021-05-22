WEB1_HOST := 192.168.33.10

console-web1:
	ssh vagrant@$(WEB1_HOST) -i $(CURDIR)/.vagrant/machines/web1/virtualbox/private_key

ping-web1:
	ansible all -i "$(WEB1_HOST)," -u vagrant -m ping
