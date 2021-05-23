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
	ansible-playbook deploy.yml -i inventory.ini -v -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ`"

rollback:
	ansible-playbook rollback.yml -i inventory.ini

setup-webservers:
	ansible-playbook setup.yml -i inventory.ini -v
