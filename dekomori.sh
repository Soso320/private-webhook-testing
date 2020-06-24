#!/bin/bash

message="$@"

## format to parse to curl
echo Sending message: $message
msg_content=\"$message\"

## discord webhook
url='https://discordapp.com/api/webhooks/725376186309673041/NhHQNb6mn5bVSTB2Q-sGV196xZXW1KFuFACa5Xg-qwTH1VI9WYYaz9OLvl_aNa3C4mZV'
curl -H "Content-Type: application/json" -X POST -d "{\"content\": $msg_content}" $url
