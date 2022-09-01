# Bash script that sends a message to the telegram bot after the qBittorrent finishes downloading a torrent. It's more better than spamming your email's inbox.

#### Inspired by [ricardotx](https://github.com/ricardotx/qbittorrent_telegram_notification) and [dideler](https://gist.github.com/dideler/85de4d64f66c1966788c1b2304b9caf1)

### Instructions:

* Follow [this guide](https://www.thewindowsclub.com/how-to-create-a-simple-telegram-bot) to create your bot

* Create a folder to put yout script
    
    `sudo mkdir [DIR]`

 * Give all the permissions to that folder
   
   `sudo chmod -R 777 [DIR]`

* Allow the execution of the script

   `sudo chmod +rx [DIR]/qbittorrent2telegram.sh`

* Modify `TOKEN` and `ID` with your own values. To obtain ID, use [this bot](https://t.me/myidbot)

* Open the qBittorrent settings on web UI, go to Options and add the script path and `"%F""%L" "%N" "%R" "%D" "%Z"` parameters (i.e: [DIR]/qbittorrent2telegram.sh `"%F" "%L" "%N" "%R" "%D" "%Z"`). Otherwise the program won't send the notifications.

![image](https://i.imgur.com/vwarSsO.png)