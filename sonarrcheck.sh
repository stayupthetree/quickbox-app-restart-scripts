#!/bin/sh

ps auxw | grep "SCREEN -f -a -d -m -S nzbdrone" | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /usr/bin/screen -f -a -d -m -S nzbdrone mono /opt/NzbDrone/NzbDrone.exe > /dev/null
fi
