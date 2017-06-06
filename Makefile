TEST_INVENTORY?=tests/inventory

clean:
	rm ansible.cfg

test:
	printf '[defaults]\nroles_path=../:~/.ansible/user/roles/\n' >ansible.cfg
	ansible-playbook -vvv tests/test.yml -i $(TEST_INVENTORY)
	rm ansible.cfg
