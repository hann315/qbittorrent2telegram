#!/bin/bash

# Set "%F" "%L" "%N" "%R" "%D" "%Z" in Run external program on completions' tab

"%F"=$1
"%L"=$2
"%N"=$3
"%R"=$4
"%D"=$5
"%Z"=$6

TOKEN="YOUR_BOT_TOKEN"
ID="YOUR_TELEGRAM_USERID" # To obtain your UID use https://t.me/myidbot

URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -S -X POST $URL -d chat_id=$ID -d text="*$3 has finished downloading*%0A%0ATorrent name: $3%0ASize: $6 bytes%0ASave path: $1%0A%0A[Your instance/hostname](Your Domain)" -d parse_mode=Markdown  -d disable_web_page_preview=false> /dev/null 2>&1