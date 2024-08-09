## Enable SSH over USB

Add next line to `config.txt`
```bash
dtoverlay=dwc2
```
Modify file `cmdline.txt`. Add the next str before `quiet`
```bash
modules-load=dwc2,g_ether
```
Create empty file `ssh` at root
