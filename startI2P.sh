#!/bin/bash
#
# V1 I2PPortable Launcher Script for Linux
# This is a basic launcher script for I2PPortable Linux
#
# It "should" detect if Java is installed and what version, if so proceed, if not exit
# It should also check to see if this is a fresh portable or not
# and copy the default configuration over if fresh
#
# I2PPortable can be found here: http://theprudentninja.com/i2p-portable-portableapps/

if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME     
    _java="$JAVA_HOME/bin/java"
else
    echo "No Java detected, please install Java and try again"
    exit 1
fi

if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo version "$version"
    if [[ "$version" > "1.8" ]]; then
        echo "Java is installed and version is more than 1.8, proceeding..."
        if [ ! -f ./Data/settings/wrapper.config ]; then
            echo "Assuming not configured, copying configuration"
            cp -r "./App/DefaultData/." "./Data/."
            echo "Launching I2P"
            ./App/I2P/i2psvc -c ../../Data/settings/wrapper.config
        else
            echo "Wrapper.config found, assuming configured"
            echo "Launching I2P"
            ./App/I2P/i2psvc -c ../../Data/settings/wrapper.config
        fi
            else         
        echo "version is less than 1.8 or not installed"
        exit 1
    fi
fi
