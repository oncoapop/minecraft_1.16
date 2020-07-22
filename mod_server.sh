#!/bin/bash

curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

git config --global --unset core.autocrlf

#java -jar BuildTools.jar --rev latest
java -jar BuildTools.jar --rev 1.16.1
