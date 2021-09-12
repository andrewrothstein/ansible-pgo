andrewrothstein.pgo
=========

![Build Status](https://github.com/andrewrothstein/ansible-pgo/actions/workflows/build.yml/badge.svg)

Installs the [CrunchyData Postgresql Operator cli](https://github.com/CrunchyData/postgres-operator).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.pgo
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
