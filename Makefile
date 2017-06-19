TEST_INVENTORY?=tests/inventory

containers = cnt-centos6 cnt-centos7

clean:
	rm -f ansible.cfg 

test-prepare: clean
	docker rm -f $(containers) || true
	ansible-galaxy install -f -r tests/requirements.yml

test: test-prepare
	printf '[defaults]\nroles_path=../:~/.ansible/user/roles/\n' >ansible.cfg
	ansible-playbook -vvv tests/test.yml -i $(TEST_INVENTORY)
	rm ansible.cfg
