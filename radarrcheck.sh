#!/bin/sh

ps auxw | grep "SCREEN -f -a -d -m -S radarr" | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /usr/bin/screen -f -a -d -m -S radarr mono /opt/Radarr/Radarr.exe -nobrowser > /dev/null
fi
