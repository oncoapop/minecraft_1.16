#!/bin/bash
# https://linuxconfig.org/ubuntu-20-04-minecraft-server-setup

# Command
#java -server -XX:+UseConcMarkSweepGC -XX:ParallelGCThreads=2 -XX:+AggressiveOpts -Xmx4G -jar spigot-1.16.1.jar nogui 
mod=$pwd"/fabric-server-launch.jar"
#mod="spigot-1.16.1.jar"

echo "Welcome to Yaps Minecraft server.."

# Command for java-14
/usr/bin/java -server -XX:ParallelGCThreads=8 -XX:+AggressiveOpts -Xms16G -Xmx28G -jar $mod nogui

screen -X quit

sleep 10




