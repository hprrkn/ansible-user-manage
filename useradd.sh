#!/bin/bash

# check arguments
if [ $# -ne 2 ]; then
  echo "invalid args count" 1>&2
  exit 1
fi

# user already exists?
/bin/egrep "$1|$2" /etc/passwd > /dev/null
if [ $? -ne 1 ]; then
  echo "username or uid already used"
  echo "plese check /etc/passwd"
  exit 1
fi

# user already exists?
/bin/egrep "$1|$2" roles/users/base_local/vars/user_list.yml > /dev/null
if [ $? -ne 1 ]; then
  echo "username or uid already written on user_list.yml"
  echo "plese check roles/users/base_local/vars/user_list.yml"
  exit 1
fi

# generate passwd
PASSWD=`cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9_!@#$%&+-' | head -c 8`

# hash passwd
HASHED_PASSWD=`python tools/hashed_pw_gen.py $PASSWD` 

# add to user_list.yml 
cat <<EOF >> roles/users/base_local/vars/user_list.yml
  - {name: '$1', id: $2, group: 'wheel', passwd: '$HASHED_PASSWD'}
EOF

# play playbook
/bin/ansible-playbook users.yml -i hosts


#end
cat <<EOF 
--------------------------------------------------------
plese tell the username and passwd to client
public key has distributed other servers and this server
the following user can ssh by private_key(/home/$1/.ssh/id_rsa)
--------------------------------------------------------
---
user : $1
passwd : $PASSWD
private_key: ↓↓
cat /home/$1/.ssh/id_rsa
---

EOF
