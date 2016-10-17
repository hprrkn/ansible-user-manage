# ansible-user-manage

```
.
├── README.md
├── ansible.cfg
├── hosts
├── roles
│   └── users
│       ├── base_local
│       │   ├── tasks
│       │   │   └── main.yml
│       │   ├── templates
│       │   │   └── id_rsa.pub.j2
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
└── users.yml

13 directories, 10 files
```
