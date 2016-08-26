#!/bin/bash
#
# Usage: ./fix-permissions username
#
# This script simply changes ownership of all the files to
# the user you wish and makes sure the needed files are executable.
# It is laid out like it is to be easy to read by a human and
# easily edited as needed to update.

if [ -z "$1" ]
  then
    echo "Please supply a username"
    echo "./fix-permissions username"
    exit 1
fi

chown -R $1:$1 ../i2pportablelin
chmod +x ./.Start-Browser-Only 
chmod +x ./.start-i2p
chmod +x ./.Start-IRC
chmod +x ./.Start-i2phex
chmod +x ./I2PBrowser.desktop
chmod +x ./i2phex.desktop
chmod +x ./jIRCii.desktop
chmod +x ./I2P.desktop
chmod +x ./App/I2P/eepget
chmod +x ./App/I2P/eepgetbrowser
chmod +x ./App/I2P/i2prouter
chmod +x ./App/I2P/runplain.sh
chmod +x ./App/I2PBrowser/execdesktop
chmod +x ./App/I2PBrowser/run-mozilla.sh
chmod +x ./App/I2PBrowser/start-i2p-browser

