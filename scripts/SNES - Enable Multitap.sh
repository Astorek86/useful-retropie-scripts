#!/bin/bash

# DESCRIPTION:
# Modifies retroarch.cfg in SNES-Directory to support multitap.
#
# BESCHREIBUNG:
# Modifiziert die retroarch.cfg im SNES-Verzeichnis so, dass es Multitap
# unterstuetzt.

# TODO: Ugly Script is ugly. Written by an not-so-good Bash-Scripter^^
# TODO: It works for 4 Players, but does it really work for 5 or more players?
#       Feel free to share better solutions^^

# IMPORTANT: Make sure you have Write-Permissions for the file!

MFILE="/opt/retropie/configs/snes/retroarch.cfg"

# Change Setting to Multitap:
sed -i -r 's/\s*(input_libretro_device_p2).*/\1 = "257"/g' "$MFILE"
# No Multitap-Setting found? Create it:
grep 'input_libretro_device_p2 = "257"' "$MFILE" >/dev/null || \
  echo 'input_libretro_device_p2 = "257"' >> "$MFILE"

# Map every controller to Multitap-HW, skip 2nd Controller
for i in 1 3 4 5 6 7 8 9; do
  sed -i -r "s/\s*(input_libretro_device_p$i).*/\1 = \"5\"/g" "$MFILE"
  grep "input_libretro_device_p$i = \"5\"" "$MFILE" >/dev/null || \
    echo "input_libretro_device_p$i = \"5\"" >> "$MFILE"
done
