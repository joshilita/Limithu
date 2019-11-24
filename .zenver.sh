#!/usr/bin/env bash
if [ $(dpkg-query -W -f='${Status}' dialog 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo "Dialog is not installed!"
  echo ""
  echo "Installing"
  apt-get install zenity
 else
  dialog --msgbox "Dialog is not released yet." 0 0 && clear
fi
