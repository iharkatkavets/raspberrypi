Make a `.service` file at `/etc/systemd/system/HERE.service` with content template
```service
[Unit]
Description=A description of service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /home/user/bla/bla/main.py --ofile /home/user/bla.txt
WorkingDirectory=/home/user/
User=root
Group=root
Restart=always
RestartSec=10
TimeoutStopSec=10
KillSignal=SIGTERM
StandardOutput=append:/var/log/HERE.log
StandardError=append:/var/log/HERE.log
StateDirectory=HERE
RuntimeDirectory=HERE

[Install]
WantedBy=multi-user.target
```
After updating the file need to execute
```sh
sudo systemctl daemon-reload
sudo systemctl restart HERE.service
```
