#!/bin/bash

# Script to post to server discord channel

message="$@"
host=`hostname`
content=$host" : "$message
## format to parse to curl
## echo Sending message: $message
msg_content=\"$content\"

url="https://ptb.discord.com/api/webhooks/750769557496397865/jW4OLyxP1kljnWS8QWh7-nRsCh2IYNGU5-_1mkrNQGbJIafTe5T_EcVJEtpnhaty1V9f"

curl -H "Content-Type: application/json" -X POST -d "{\"content\": $msg_content}" $url
