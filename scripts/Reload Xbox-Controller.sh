#!/bin/bash

# DESCRIPTION:
# Reload xboxdrv-Driver. Useful if you want to plug a new Xbox-Controller in
#
# BESCHREIBUNG:
# Laedt den xboxdrv-Treiber nochmal neu. Nuetzlich, wenn man neue XBox-
# Controller angeschlossen hat und Retropie deswegen nicht neustarten oder
# auf der Konsole manuelle Eingaben taetigen moechte.

# IMPORTANT: Make sure that "sudo" does not ask for password!

sudo killall xboxdrv
sudo xboxdrv --id 0 --led 2 --deadzone 4000 --silent --trigger-as-button --dbus disabled --detach-kernel-driver &
sudo xboxdrv --id 1 --led 3 --deadzone 4000 --silent --trigger-as-button --dbus disabled &
sudo xboxdrv --id 2 --led 4 --deadzone 4000 --silent --trigger-as-button --dbus disabled &
sudo xboxdrv --id 3 --led 5 --deadzone 4000 --silent --trigger-as-button --dbus disabled &
