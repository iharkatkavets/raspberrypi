## Some steps to fast up SAMBA share

Create a group
```
groupadd <GROUPNAME>
```

Create a user with home folder
```
useradd -m -s /usr/sbin/nologin -g <GROUPNAME> <USERNAME>
```

Add next line to config `/etc/samba/sbmd.conf`
```
include = /etc/samba/shares.conf
```

Create the file `/etc/samba/shares.conf` with next content
```
[PublicFiles]
comment = Some Shared Space
path = /home/<USERNAME>
force user = <USERNAME>
force group = <GROUPNAME>
create mask = 0664
force create mode = 0664
directory mask = 0775
force directory mode = 0775
read only = no                                                                                 
browsable = yes  
public = yes
writable = yes
wins support = yes
local master = yes
preferred master = yes
```
