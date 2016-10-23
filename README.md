# ansible-user-manage and more something

ansible-playbook 2.1.1.0

```
.
├── ansible.cfg
├── hosts
├── ip_list.yml
├── README.md
├── roles
│   ├── httpd_conf
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   ├── local.conf.j2
│   │   │   └── remote.conf.j2
│   │   └── vars
│   │       └── ip_list.yml
│   └── users
│       ├── base_local
│       │   ├── tasks
│       │   │   └── main.yml
│       │   └── vars
│       │       └── user_list.yml
│       ├── remote
│       │   └── tasks
│       │       └── main.yml
│       ├── test
│       │   └── tasks
│       │       └── main.yml
│       └── tmp
│           └── tmp_authorized_keys
├── tools
│   └── hashed_pw_gen.py
├── useradd.sh
└── users.yml

16 directories, 15 files
```
