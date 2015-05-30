#!/bin/bash

# DESCRIPTION:
# Modifies retroarch.cfg in SNES-Directory to disable multitap-support.
#
# BESCHREIBUNG:
# Modifiziert die retroarch.cfg im SNES-Verzeichnis so, dass es Multitap
# nicht mehr unterstuetzt.

# TODO: Ugly Script is ugly. Written by an not-so-good Bash-Scripter^^

# IMPORTANT: Make sure you have Write-Permissions for the file!

MFILE="/opt/retropie/configs/snes/retroarch.cfg"

# Change Setting to Multitap:
sed -i -r '/\s*input_libretro_device_p2\s*=\s*"257"/d' "$MFILE"

# Map every controller to Multitap-HW, skip 2nd Controller
for i in 1 3 4 5 6 7 8 9; do
  sed -r -i "/\s*input_libretro_device_p$i\s*=\s*\"5\"/d" "$MFILE"
done
