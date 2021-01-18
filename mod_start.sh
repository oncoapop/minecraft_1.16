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
mod="fabric-server-launch.jar"
#mod="spigot-1.16.1.jar"

echo "Welcome to Yaps Minecraft server.."
echo "When you stop the server wait for GG! to appear before you exit the screen..."

# Command for java-14
if [ -z $1  ]
        then
	read -r -s -p $'Press enter to start server without gui'
	java -server -XX:ParallelGCThreads=6 -Xms16G -Xmx28G -jar $mod nogui
	elif [[ "$1" -eq "gui" ]]
	then
	read -r -s -p $'Press enter to start server with gui (needs Xlaunch)'
	java -server -XX:ParallelGCThreads=6 -Xms16G -Xmx28G -jar $mod
	else
	echo "Invalid command."
	exit;
fi

if [ ! -z "$STY" ]
        then
	echo "GG!"
	echo "If you are no longer using the server, shut it down with _sudo shutdown_"
	read -r -s -p $'Press enter to exit screen session...'
	screen -X quit

fi



