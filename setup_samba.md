## Some steps to fast up SAMBA share

Create a group
```
groupadd <GROUPNAME>
```

Create a user with home folder
```
useradd -m -s /usr/sbin/nologin -g <GROUPNAME> <USERNAME>
```

Add next line to config `/etc/samba/smb.conf`
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

iOS `Files` compatible config (upload operations do work)
```
[global]
   wins support = yes
   local master = yes
   preferred master = yes

   server min protocol = SMB2
   server max protocol = SMB3
   unix extensions = no

   ea support = yes
   vfs objects = fruit streams_xattr
   fruit:metadata = stream
   fruit:posix_rename = yes
   fruit:zero_file_id = yes

[GuestShare]
   path = /share/<DIR>
   browseable = yes
   read only = no
   guest ok = yes
   public = yes
   force user = <SMBUSER>
   force group = <SMBGROUP>
   create mask = 0664
   directory mask = 0775
   oplocks = no
   level2 oplocks = no
   kernel oplocks = no
   aio read size = 1
   aio write size = 1

```
