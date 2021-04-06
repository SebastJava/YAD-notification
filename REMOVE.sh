#!/bin/bash

echo -e "\n\n\n\n"
# Quit this YAD-notification process if running
if pgrep -f "yad-notification" > /dev/null
then
    echo "quit" > $HOME/.var/yad-pipe
    echo "Checked: yad-notification was running, now it is stopped."
else
    echo "Checked: yad-notification was not running."
fi
# Display message
echo -e "\nThis small script will remove YAD-notification from /usr/local/bin and /usr/share/icons directories. Please enter your password for this.\n"
sudo rm -f /usr/local/bin/yad-notification /usr/local/bin/yad-toggle
sudo rm -f /usr/share/icons/yad-icon-on.svg /usr/share/icons/yad-icon-off.svg
echo -e "\nDone.\nPlease take note that this only removed the YAD-notification scripts and icons. If you also want to remove the YAD package, type: 'apt remove yad'."
