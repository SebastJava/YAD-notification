#!/bin/bash

# Display message
echo -e "\n\n\n\nThis small installer will copy your files into /usr/local/bin and /usr/share/icons directories and allow executing as program. Please enter your password for this.\n"
# Copy 2 scripts and allow executing as program
sudo cp -f yad-notification yad-toggle /usr/local/bin
sudo chmod a+x /usr/local/bin/yad-notification /usr/local/bin/yad-toggle
# Copy 2 icons
sudo cp -f yad-icon-on.svg yad-icon-off.svg /usr/share/icons
# Start it !
echo -e "\nDone. Now you should see a new icon in your system tray, or notification area. Click on it, this icon should change.\n\nBut this is just a test. It will end when you close this terminal window. Now, if you want this yad-notification to be always available, goto Menu > Startup Applications and add this 'yad-notification' custom command there. This system tray icon should be there on your next login."
yad-notification
