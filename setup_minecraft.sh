#!/bin/bash
# Reference https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server
rm server.jar* -f

# Copy link from https://www.minecraft.net/en-us/download/server/
#wget  https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar # 1.16
wget https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar #1.18

# Install Java
sudo apt install openjdk-8-jre-headless
