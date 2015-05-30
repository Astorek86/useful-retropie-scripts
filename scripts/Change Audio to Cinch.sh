#!/bin/bash

# DESCRIPTION:
# Change Audio to Cinch. Also modifies /boot/config.txt to save settings
# after Reboot.

# IMPORTANT: Only tested on RetroPie 3.0 BETA 2. I don't know if it
# works on earlier versions... Also make sure that "sudo" doesnt ask for
# password!

sudo sed -i 's/^\(hdmi_drive=2\)/#\1/' /boot/config.txt
amixer cset numid=3 1
