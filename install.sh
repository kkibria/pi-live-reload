#!/usr/bin/env bash
#
#BASEDIR=$(dirname "$0")

# apt-get update
# apt-get upgrade
# apt autoremove
# sudo apt-get install nodejs npm
git -C $HOME/.local/share clone https://github.com/kkibria/pi-live-reload.git
npm install --prefix $HOME/.local/share/pi-live-reload
cat << 'EOF' > $HOME/.local/bin/pi-live-reload
#!/usr/bin/env bash
#
BASEDIR=$(dirname "$0")
node $BASEDIR/../share/pi-live-reload
EOF
chmod ug+x $HOME/.local/bin/pi-live-reload