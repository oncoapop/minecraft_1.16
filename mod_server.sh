#!/bin/bash

# Spigot for 1.16.1
#curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

#git config --global --unset core.autocrlf

#java -jar BuildTools.jar --rev latest
#java -jar BuildTools.jar --rev 1.16.1

# fabric 1.16.4
curl https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.10.1/fabric-installer-0.10.1.jar -o fabric-installer-0.10.1.jar

java -jar fabric-installer-0.10.1.jar server -downloadMinecraft -mcversion 1.16.4
#java -jar fabric-installer-0.6.1.51.jar server -downloadMinecraft -mcversion 1.16.4
