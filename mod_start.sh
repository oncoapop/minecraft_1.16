#!/bin/bash

# Script to start Spigot Minecraft Mod in a screen

if [ -z "$STY" ]
        then
        echo "Please run this script in a screen..."
        echo "That means type _screen_ and then _./mod_start.sh_"
        exit;
fi

# Command
#java -server -XX:+UseConcMarkSweepGC -XX:ParallelGCThreads=2 -XX:+AggressiveOpts -Xmx4G -jar spigot-1.16.1.jar nogui 

# Command for java-14
java -server -XX:ParallelGCThreads=2 -Xmx4G -jar spigot-1.16.1.jar nogui

if [ ! -z "$STY" ]
        then
	echo "Exiting screen..."
	screen -X quit
fi

echo "GG!"


