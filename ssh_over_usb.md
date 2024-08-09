## Enable SSH over USB

Add next line to `config.txt`
```bash
[cm5]
dtoverlay=dwc2,dr_mode=host
```
Modify file `cmdline.txt`. Add the next str before `quiet`
```bash
modules-load=dwc2,g_ether
```
Create empty file `ssh` at root
