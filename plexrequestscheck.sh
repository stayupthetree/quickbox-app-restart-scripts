#!/bin/sh

ps auxw | grep "SCREEN -f -a -d -m -S plexrequests" | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /usr/bin/screen -f -a -d -m -S plexrequests mono /opt/plexrequests/Ombi.exe -p 3000 --base plexrequests > /dev/null
fi
