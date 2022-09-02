#!/bin/bash

"%N"=$1
"%Z"=$2
"%D"=$3

TOKEN="YOUR_BOT_TOKEN"
ID="YOUR_TELEGRAM_USERID"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
CONVERT=$(numfmt --to=iec-i --suffix=B --format="%9.2f" $2)

curl -S -X POST $URL \
        -d chat_id=$ID \
        -d parse_mode=Markdown \
        -d disable_web_page_preview=true \
        -d text="*$1 has finished downloading*%0A%0ATorrent name: $1%0ASize: $CONVERT%0ASave path: $3%0A%0AThanks for using qBittorrent and [this program](https://github.com/hann315/qbittorrent2telegram)."
        