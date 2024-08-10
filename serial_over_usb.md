## Setup serial connection over USB

Add next line to `config.txt` file 
```
[all]
dtoverlay=dwc2,dr_mode=peripheral
```

Not sure if need to comment lines
```
#[cm4]
# Enable host mode on the 2711 built-in XHCI USB controller.
# This line should be removed if the legacy DWC2 controller is required
# (e.g. for USB device mode) or if USB support is not required.
#otg_mode=1

#[cm5]
#dtoverlay=dwc2,dr_mode=host
```

Add the next str to the end of line of the file `cmdline.txt`
```
modules-load=dwc2,g_cdc g_cdc.dev_addr=12:22:33:44:55:66 g_cdc.host_addr=16:22:33:44:55:66
```
More info is [here](https://github.com/thagrol/Guides/blob/main/ethernetgadget.pdf)

### Not sure if the next steps are required to be performed on RaspberryPi Zero W:
```bash
sudo systemctl enable serial-getty@ttyGS0.service
sudo systemctl start serial-getty@ttyGS0.service
# To check status next command
sudo systemctl is-active serial-getty@ttyGS0.service
```

## Connect to raspberry pi via serial connection

On MacOS check for active connection
```bash
ls -1 /dev/cu*
# Should be something like
# ...
# /dev/cu.Bluetooth-Incoming-Port  
# /dev/cu.usbmodemXXXX             
# ...
ls -1 /dev/tty*
# Should be something like
# ...
# /dev/tty.Bluetooth-Incoming-Port 
# /dev/tty.usbmodemXXXX          
# ...
```

Connect to the serial port connection use `screen` tool
```bash
screen /dev/tty.usbmodemXXXX 115200
```
