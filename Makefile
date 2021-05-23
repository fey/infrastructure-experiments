start:
	vagrant up

install:
	ansible-galaxy install -r requirements.yml

console-web1:
	vagrant ssh web1

ping-web1:
	ansible web1 -i inventory.ini -m ping

ping-webservers:
	ansible webservers -i inventory.ini -m ping
