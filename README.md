Role Name
=========

This role provides a common OS platform for running the JBoss A-MQ 7 software.

Requirements
------------

The requirements are listed in the requirements.yml file and can be installed using the following command:

```
ansible-galaxy install -f -r requirements.yml
```

Role Variables
--------------

| Name              | Default Value       | Description          |
|-------------------|---------------------|----------------------|
| `basic_server_common_packages` | (see below) | A list of packages to install on the system. |

The list of packages is dependent on the distribution. For the Red Hat family of distributions, the package list is:

* git
* vim-enhanced
* git
* cmake
* doxygen
* gcc
* gcc-c++
* make
* libaio-devel
* net-tools
* wget
* python-pip
* zip
* bzip2
* unzip
* psmisc
* java-1.8.0-openjdk-devel
* python-setuptools


Dependencies
------------

This role depends on the following roles:
* rhn-register (Red Hat only)
* rhn-subscribe (Red Hat only)
* epel (EL - Red Hat, CentOS, etc)

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: basic-server }

Testing
----------------

To test this role you need docker. If your system has docker, this role can be tested using the following command:

```make test```


License
-------

Apache 2.0

Author Information
------------------

Messaging QE team @ redhat.com
