# pi-live-reload

## install

``ssh`` into the raspberry pi.

Install node and npm first.
```bash
apt-get update
apt-get upgrade
apt autoremove
sudo apt-get install nodejs npm
```

Install ``pi-live-reload``
```bash
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/kkibria/pi-live-reload/master/install.sh | sh
```

now from command line you type,
```bash
pi-live-reload
```
and live reload server will run

you can check by typing,
```bash
netstat -tulpn | grep LISTEN
```
and you should see port 35729 is listening.
