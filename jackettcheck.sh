#!/bin/sh

ps auxw | grep "SCREEN -f -a -d -m -S jackett" | grep -v grep > /dev/null

if [ $? != 0 ]
then
        /usr/bin/screen -f -a -d -m -S jackett mono /home/stayupthetree/Jackett/JackettConsole.exe > /dev/null
fi
