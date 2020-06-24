#!/bin/bash
now=$(ping 192.168.8.169 -c 1)
message="$@"
## format to parse to curl
## echo Sending message: $message
msg_content=\"$message\"
## discord webhook
url='https://discordapp.com/api/webhooks/725358306276671588/KtcV7IRdaQrna0_3jdE-dCQEUIRVQ6exqaLwKtib_0KN34YxIg7lIoLuUNgWehSobvUv'
curl -H "Content-Type: application/json" -X POST -d "{\"content\": $msg_content}" $url
