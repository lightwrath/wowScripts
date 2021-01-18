#!/bin/bash

downloadDir="/home/lightwrath/Downloads"
addonDir="/mnt/data/lutris/world-of-warcraft/drive_c/Program Files (x86)/World of Warcraft/_retail_/Interface/AddOns"

addons=(
  "https://www.curseforge.com/wow/addons/angry-assignments/download"
  "https://www.curseforge.com/wow/addons/bartender4/download"
  "https://www.curseforge.com/wow/addons/deadly-boss-mods/download"
  "https://www.curseforge.com/wow/addons/details/download"
  "https://www.curseforge.com/wow/addons/ealign-updated/download"
  "https://www.curseforge.com/wow/addons/enhanced-raid-frames/download"
  "https://www.curseforge.com/wow/addons/exorsus-raid-tools/download"
  "https://www.curseforge.com/wow/addons/pitbull-unit-frames-4-0/download"
  "https://www.curseforge.com/wow/addons/rclootcouncil/download"
  "https://www.curseforge.com/wow/addons/tellmewhen/download"
  "https://www.curseforge.com/wow/addons/weakauras-2/download"
)

echo "Removing $addonDir"
rm -rI "$addonDir"
mkdir "$addonDir"
for addon in ${addons[*]}; do
  echo "Downloading $addon"
  timeout 15s firefox -p "automation" $addon -headless
  download=$(find ~ -type f -iname $(ls -t $downloadDir | head -1))
  echo $download
  unzip $download -d "$addonDir"
  rm "$download"
  sleep 5s
done

