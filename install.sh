#!/usr/bin/env bash
#
#BASEDIR=$(dirname "$0")

# apt-get update
# apt-get upgrade
# apt autoremove
# sudo apt-get install nodejs npm
git -C /home/pi/.local/share clone https://github.com/kkibria/pi-live-reload.git
npm install --prefix /home/pi/.local/share/pi-live-reload
cat << 'EOF' > /home/pi/.local/bin/pi-live-reload
#!/usr/bin/env bash
#
BASEDIR=$(dirname "$0")
node $BASEDIR/../share/pi-live-reload
'EOF'