#!/bin/bash
# https://linuxconfig.org/ubuntu-20-04-minecraft-server-setup

SCRIPT=$(readlink -f "$0")
# Absolute path of the script
DIR=$(dirname "$SCRIPT")

screenName="Minecraft"
if [ -z "$STY" ]; then exec screen -dm -S $screenName /bin/bash "$0"; fi

cd $DIR

# Command
#java -server -XX:+UseConcMarkSweepGC -XX:ParallelGCThreads=2 -XX:+AggressiveOpts -Xmx4G -jar spigot-1.16.1.jar nogui 
mod=$DIR"/fabric-server-launch.jar"
#mod="spigot-1.16.1.jar"

echo "Welcome to Yaps Minecraft server.."
message=$screenName" server started..."

$DIR/post_discord.sh $message

# Command for java-14
/usr/bin/java -server -XX:ParallelGCThreads=4 -XX:+AggressiveOpts -Xms4G -Xmx10G -jar $mod nogui

message=$screenName" server stopped..."
$DIR/post_discord.sh $message

screen -X quit





