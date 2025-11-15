## Setup serial connection over USB

Add next line to `config.txt` file 
```
[all]
dtoverlay=dwc2,dr_mode=peripheral
```

Append the line in the file `cmdline.txt`
```
modules-load=dwc2,g_serial
```
More info is [here](https://github.com/thagrol/Guides/blob/main/ethernetgadget.pdf)

Ensure that the service does work on RPI
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
