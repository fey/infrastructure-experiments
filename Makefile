WEB1_HOST := 192.168.33.10

start:
	vagrant up

install:
	ansible-galaxy install -r requirements.yml

console-web1:
	vagrant ssh web1

ping-web1:
	ansible web1 -i webservers -m ping

ping-webservers:
	ansible webservers -i inventory.ini -m ping
