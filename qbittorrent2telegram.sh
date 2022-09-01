#!/bin/bash

"%N"=$1

TOKEN="YOUR_BOT_TOKEN"
ID="YOUR_TELEGRAM_USERID"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -S -X POST $URL \
        -d chat_id=$ID \
        -d parse_mode=Markdown \
        -d disable_web_page_preview=true \
        -d text="*$1 has finished downloading*%0A%0AThanks for using qBittorrent and [this program](https://github.com/hann315/qbittorrent2telegram)"
