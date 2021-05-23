start:
	vagrant up

install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

console-web1:
	vagrant ssh web1

ping-web1:
	ansible web1 -i inventory.ini -m ping

ping-webservers:
	ansible webservers -i inventory.ini -m ping

deploy:
	ansible-playbook deploy.yml -i inventory.ini -v

setup-webservers:
	ansible-playbook setup.yml -i inventory.ini -v
