# Bash script that sends a message to the telegram bot after the qBittorrent finishes downloading a torrent.
## It's more better than flooding your inbox.

#### Inspired by [ricardotx](https://github.com/ricardotx/qbittorrent_telegram_notification) and [dideler](https://gist.github.com/dideler/85de4d64f66c1966788c1b2304b9caf1)

### Instructions:

* Follow [this great tutorial](https://www.thewindowsclub.com/how-to-create-a-simple-telegram-bot) to create your bot

* Create a folder to put yout script
    
    `sudo mkdir [DIR]`

 * Give all the permissions to that folder
   
   `sudo chmod -R 777 [DIR]`

* Allow the execution of the script

   `sudo chmod +rx [DIR]/qbittorrent2telegram.sh`

* Modify `TOKEN` and `ID` with your own. To obtain ID, use [this bot](https://t.me/myidbot)

   * To send the notifications to a group along with your other bots, follow this [great tutorial](https://sarafian.github.io/low-code/2020/03/24/create-private-telegram-chatbot.html) to obtain group chat ID

* Open the qBittorrent settings on web UI, go to Options and add the script path and `"%N" "%Z" "%D"` parameter (i.e: [DIR]/qbittorrent2telegram.sh `"%N" "%Z" "%D"`). Otherwise, the program won't send the notifications and mess up the text.

![image](https://i.imgur.com/MtzsP9U.png)

* And the program will send the notifications.

![image](https://i.imgur.com/V41zTYPh.png)