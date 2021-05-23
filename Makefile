start:
	vagrant up

install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

console-web1:
	vagrant ssh web1

ping-web1:
	ansible -i inventory.ini web1 -m ping

ping-webservers:
	ansible -i inventory.ini webservers -m ping

deploy:
	ansible-playbook -i inventory.ini -v deploy.yml -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ`"

rollback:
	ansible-playbook -i inventory.ini -v rollback.yml

setup-webservers:
	ansible-playbook -i inventory.ini -v setup.yml
