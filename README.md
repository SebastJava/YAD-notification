![YAD-notification-on preview](YAD-notification-on.png)
![YAD-notification-off preview](YAD-notification-off.png)
# YAD-notification for LinuxMint and Ubuntu
A mini repository showing an example of a YAD notification.

Based on https://sourceforge.net/p/yad-dialog/wiki/NotificationIcon/

Here we are creating a special kind of launcher. It is an icon in the system tray, also known as the notification area. Clicking on this icon will launch some application, script, or command. It can launch some custom script of yours. What makes this launcher so special is his ability to change his icon instantly, to show some status update. Here, as an example, we are only creating a toggle that will change from "OFF" to "ON" status and vice-versa. This is only a starting base. It only changes the tray icon and doesn’t do anything else. It is up to you to build something useful from this.

This is based on the YAD package. This YAD does much more than just some little tray icons. YAD (yet another dialog) is a tool to create graphical dialogs from shell scripts. Check the description in your Software Manager: "YAD allows you to display GTK+ dialog boxes from command line or shell scripts. It is similar to Zenity but with more dialog types and options." This YAD is available from your Software Manager, or Synaptic, or Terminal.

Please take note that if you only need some tray icon to toggle ON/OFF and send some commands, you could use the Gtrayicon instead. Also available from your official sources. This one is perfectly simple, very easy to use. But there is a major difference. Gtrayicon only toggles between two states, and does not allow any feedback from your script. So, you can't make your tray icon to show some "fail" status, for example. On the contrary, if you take a look at how this YAD-notification works, you will see you have many possibilities. And this is only a small part of YAD...

## There are two scripts

**yad-notification:** This is the launcher. You can replace `--command="yad-toggle"` with any command you want.

**yad-toggle:** This is just for a quick demonstration. You can replace this script with your script. In your script, where you want the tray icon to be changed, put this: `echo "icon:/PATH/TO/ICON.svg" > $HOME/.var/yad-pipe`

...And you can replace my generic icons with your icons in both scripts. But please take note that on MATE i found you must use some /path/to/icon, not just the icon name.

## Prerequisites
* Install **YAD** from your Software Manager, or Synaptic, or from your terminal with this command: `sudo apt install yad`.
* [Download ZIP here](https://github.com/SebastJava/yad-notification/archive/main.zip) (OR click on top-right green button "Code" and then click on **Download ZIP**.)
* **Extract** this zip (unzip).

## Automatic Installation
* Make sure **INSTALL.sh** is allowed to execute as program: Properties > Permissions > Allow executing file as program. Or open your terminal in this YAD-notification directory and type `chmod a+x INSTALL.sh`.
* Double-click on INSTALL.sh to **Run in Terminal**.
* Go to Menu > Search > **Startup Applications**. Click on [+] or [Add] to add your custom command.
  * Name: YAD-notification
  * Command: yad-notification
  * Comment: Toggle to test YAD notification area.
* Your new tray icon should appear on your next login.

## Manual Installation
* Copy **yad-notification** and **yad-toggle** into /usr/local/bin using your GUI or open your terminal into your downloaded and extracted directory and type: `sudo cp -f yad-notification yad-toggle /usr/local/bin`.
* Make sure **both scripts are executable**: File Properties > Permissions > Allow executing... Or type `sudo chmod a+x /usr/local/bin/yad-notification /usr/local/bin/yad-toggle`.
* Copy **yad-icon-off.svg** and **yad-icon-on.svg** into /usr/share/icons using your GUI or open your terminal into your downloaded and extracted directory and type: `sudo cp -f yad-icon-on.svg yad-icon-off.svg /usr/share/icons`.
* **Test it !** Open your terminal and type `yad-notification`. 
* Go to Menu > Search > **Startup Applications**. Click on [+] or [Add] to add your custom command.
  * Name: YAD-notification
  * Command: yad-notification
  * Comment: Toggle to test YAD notification area.
* Your new tray icon should appear on your next login.

Tested on LinuxMint Cinnamon 20.1 and LinuxMint MATE 18.3.