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

chown -R $1:$1 ../I2PPortableLin
chmod +x ./fix-permissions.sh ./imule.desktop ./I2PBrowser.desktop ./.start-imule ./.start-i2p ./App/I2PBrowser/Libraries/libgmp.so.10 ./App/I2PBrowser/Libraries/libstdc++.so.6 ./App/I2PBrowser/Libraries/libcrypto.so.1.0.0 ./App/I2PBrowser/Libraries/libevent-2.0.so.5 ./App/I2PBrowser/Libraries/libssl.so.1.0.0 ./App/I2PBrowser/libnss3.so ./App/I2PBrowser/libmozsqlite3.so ./App/I2PBrowser/libssl3.so ./App/I2PBrowser/libnssckbi.so ./App/I2PBrowser/firefox ./App/I2PBrowser/libplds4.so ./App/I2PBrowser/libsmime3.so ./App/I2PBrowser/libnssutil3.so ./App/I2PBrowser/webapprt-stub ./App/I2PBrowser/execdesktop ./App/I2PBrowser/plugin-container ./App/I2PBrowser/libsoftokn3.so ./App/I2PBrowser/libxul.so ./App/I2PBrowser/libnssdbm3.so ./App/I2PBrowser/liblgpllibs.so ./App/I2PBrowser/browser/components/libbrowsercomps.so ./App/I2PBrowser/libfreebl3.so ./App/I2PBrowser/libplc4.so ./App/I2PBrowser/libnspr4.so ./App/I2PBrowser/start-i2p-browser ./App/I2PBrowser/run-mozilla.sh ./App/I2P/eepgetbrowser ./App/I2P/i2psvc ./App/I2P/runplain.sh ./App/I2P/i2prouter ./App/I2P/eepget ./App/imule/imuleweb ./App/imule/wxcas ./App/imule/imulegui ./App/imule/alc ./App/imule/cas ./App/imule/imuled ./App/imule/ed2k ./App/imule/alcc ./App/imule/imule ./App/imule/imulecmd ./.Start-Browser-Only ./I2P.desktop

